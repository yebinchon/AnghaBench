; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_vax_floating_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_vax_floating_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_INT = common dso_local global i64 0, align 8
@TYPE_CODE_RANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"___XF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ada_is_vax_floating_type(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %2, align 8
  %4 = load %struct.type*, %struct.type** %2, align 8
  %5 = call i32* @ada_type_name(%struct.type* %4)
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %12

8:                                                ; preds = %1
  %9 = load %struct.type*, %struct.type** %2, align 8
  %10 = call i32* @ada_type_name(%struct.type* %9)
  %11 = call i32 @strlen(i32* %10)
  br label %12

12:                                               ; preds = %8, %7
  %13 = phi i32 [ 0, %7 ], [ %11, %8 ]
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp sgt i32 %14, 6
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load %struct.type*, %struct.type** %2, align 8
  %18 = call i64 @TYPE_CODE(%struct.type* %17)
  %19 = load i64, i64* @TYPE_CODE_INT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.type*, %struct.type** %2, align 8
  %23 = call i64 @TYPE_CODE(%struct.type* %22)
  %24 = load i64, i64* @TYPE_CODE_RANGE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %21, %16
  %27 = load %struct.type*, %struct.type** %2, align 8
  %28 = call i32* @ada_type_name(%struct.type* %27)
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = getelementptr inbounds i32, i32* %31, i64 -6
  %33 = call i64 @DEPRECATED_STREQN(i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %26, %21, %12
  %36 = phi i1 [ false, %21 ], [ false, %12 ], [ %34, %26 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local i32* @ada_type_name(%struct.type*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @DEPRECATED_STREQN(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
