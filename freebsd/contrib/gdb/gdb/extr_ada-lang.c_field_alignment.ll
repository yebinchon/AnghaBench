; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_field_alignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_field_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"___XV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*, i32)* @field_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @field_alignment(%struct.type* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.type*, %struct.type** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i8* @TYPE_FIELD_NAME(%struct.type* %9, i32 %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %18

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strlen(i8* %16)
  br label %18

18:                                               ; preds = %15, %14
  %19 = phi i32 [ 0, %14 ], [ %17, %15 ]
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isdigit(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %22, %18
  %32 = load i32, i32* @TARGET_CHAR_BIT, align 4
  store i32 %32, i32* %3, align 4
  br label %69

33:                                               ; preds = %22
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @isdigit(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 2
  store i32 %44, i32* %8, align 4
  br label %48

45:                                               ; preds = %33
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 7
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = getelementptr inbounds i8, i8* %55, i64 -6
  %57 = call i32 @DEPRECATED_STREQN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %56, i32 5)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %51, %48
  %60 = load i32, i32* @TARGET_CHAR_BIT, align 4
  store i32 %60, i32* %3, align 4
  br label %69

61:                                               ; preds = %51
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = call i32 @atoi(i8* %65)
  %67 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %68 = mul i32 %66, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %61, %59, %31
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @DEPRECATED_STREQN(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
