; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-exp.c_convert_char_literal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-exp.c_convert_char_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_ENUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"QU%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.type*, i64)* @convert_char_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @convert_char_literal(%struct.type* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [7 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.type*, %struct.type** %4, align 8
  %9 = icmp eq %struct.type* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.type*, %struct.type** %4, align 8
  %12 = call i64 @TYPE_CODE(%struct.type* %11)
  %13 = load i64, i64* @TYPE_CODE_ENUM, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %2
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %3, align 8
  br label %44

17:                                               ; preds = %10
  %18 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %19 = load i64, i64* %5, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %39, %17
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.type*, %struct.type** %4, align 8
  %25 = call i32 @TYPE_NFIELDS(%struct.type* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %29 = load %struct.type*, %struct.type** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @TYPE_FIELD_NAME(%struct.type* %29, i32 %30)
  %32 = call i64 @DEPRECATED_STREQ(i8* %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.type*, %struct.type** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @TYPE_FIELD_BITPOS(%struct.type* %35, i32 %36)
  store i64 %37, i64* %3, align 8
  br label %44

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %22

42:                                               ; preds = %22
  %43 = load i64, i64* %5, align 8
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %42, %34, %15
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i64 @DEPRECATED_STREQ(i8*, i32) #1

declare dso_local i32 @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i64 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
