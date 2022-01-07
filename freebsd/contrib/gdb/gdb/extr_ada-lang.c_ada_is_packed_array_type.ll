; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_packed_array_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_packed_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"___XP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ada_is_packed_array_type(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %4 = load %struct.type*, %struct.type** %3, align 8
  %5 = icmp eq %struct.type* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

7:                                                ; preds = %1
  %8 = load %struct.type*, %struct.type** %3, align 8
  %9 = call i32 @CHECK_TYPEDEF(%struct.type* %8)
  %10 = load %struct.type*, %struct.type** %3, align 8
  %11 = call i32* @ada_type_name(%struct.type* %10)
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load %struct.type*, %struct.type** %3, align 8
  %15 = call i32* @ada_type_name(%struct.type* %14)
  %16 = call i32* @strstr(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32* %16, null
  br label %18

18:                                               ; preds = %13, %7
  %19 = phi i1 [ false, %7 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %6
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32* @ada_type_name(%struct.type*) #1

declare dso_local i32* @strstr(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
