; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_cp_lookup_transparent_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_cp_lookup_transparent_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @cp_lookup_transparent_type(i8* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.type* @basic_lookup_transparent_type(i8* %6)
  store %struct.type* %7, %struct.type** %4, align 8
  %8 = load %struct.type*, %struct.type** %4, align 8
  %9 = icmp ne %struct.type* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.type*, %struct.type** %4, align 8
  store %struct.type* %11, %struct.type** %2, align 8
  br label %25

12:                                               ; preds = %1
  %13 = call i32 @get_selected_block(i32 0)
  %14 = call i8* @block_scope(i32 %13)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store %struct.type* null, %struct.type** %2, align 8
  br label %25

21:                                               ; preds = %12
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call %struct.type* @cp_lookup_transparent_type_loop(i8* %22, i8* %23, i32 0)
  store %struct.type* %24, %struct.type** %2, align 8
  br label %25

25:                                               ; preds = %21, %20, %10
  %26 = load %struct.type*, %struct.type** %2, align 8
  ret %struct.type* %26
}

declare dso_local %struct.type* @basic_lookup_transparent_type(i8*) #1

declare dso_local i8* @block_scope(i32) #1

declare dso_local i32 @get_selected_block(i32) #1

declare dso_local %struct.type* @cp_lookup_transparent_type_loop(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
