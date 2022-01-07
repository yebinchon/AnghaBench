; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_type_wider_than.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_type_wider_than.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*, %struct.type*)* @type_wider_than to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_wider_than(%struct.type* %0, %struct.type* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  store %struct.type* %1, %struct.type** %4, align 8
  %5 = load %struct.type*, %struct.type** %3, align 8
  %6 = call i64 @TYPE_LENGTH(%struct.type* %5)
  %7 = load %struct.type*, %struct.type** %4, align 8
  %8 = call i64 @TYPE_LENGTH(%struct.type* %7)
  %9 = icmp sgt i64 %6, %8
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = load %struct.type*, %struct.type** %3, align 8
  %12 = call i64 @TYPE_LENGTH(%struct.type* %11)
  %13 = load %struct.type*, %struct.type** %4, align 8
  %14 = call i64 @TYPE_LENGTH(%struct.type* %13)
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load %struct.type*, %struct.type** %3, align 8
  %18 = call i64 @TYPE_UNSIGNED(%struct.type* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.type*, %struct.type** %4, align 8
  %22 = call i64 @TYPE_UNSIGNED(%struct.type* %21)
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %20, %16, %10
  %26 = phi i1 [ false, %16 ], [ false, %10 ], [ %24, %20 ]
  br label %27

27:                                               ; preds = %25, %2
  %28 = phi i1 [ true, %2 ], [ %26, %25 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i64 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @TYPE_UNSIGNED(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
