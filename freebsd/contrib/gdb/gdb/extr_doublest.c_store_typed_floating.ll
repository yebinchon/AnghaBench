; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_store_typed_floating.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_store_typed_floating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_FLT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_typed_floating(i8* %0, %struct.type* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.type*, %struct.type** %5, align 8
  %8 = call i64 @TYPE_CODE(%struct.type* %7)
  %9 = load i64, i64* @TYPE_CODE_FLT, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @gdb_assert(i32 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.type*, %struct.type** %5, align 8
  %15 = call i32 @TYPE_LENGTH(%struct.type* %14)
  %16 = call i32 @memset(i8* %13, i32 0, i32 %15)
  %17 = load %struct.type*, %struct.type** %5, align 8
  %18 = call i32* @TYPE_FLOATFORMAT(%struct.type* %17)
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.type*, %struct.type** %5, align 8
  %23 = call i32 @TYPE_LENGTH(%struct.type* %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @store_floating_by_length(i8* %21, i32 %23, i32 %24)
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.type*, %struct.type** %5, align 8
  %28 = call i32* @TYPE_FLOATFORMAT(%struct.type* %27)
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @floatformat_from_doublest(i32* %28, i32* %6, i8* %29)
  br label %31

31:                                               ; preds = %26, %20
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32* @TYPE_FLOATFORMAT(%struct.type*) #1

declare dso_local i32 @store_floating_by_length(i8*, i32, i32) #1

declare dso_local i32 @floatformat_from_doublest(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
