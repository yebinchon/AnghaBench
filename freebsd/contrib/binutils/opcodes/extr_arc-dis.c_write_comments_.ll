; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-dis.c_write_comments_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-dis.c_write_comments_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arcDisState = type { i64, i32, i32* }

@comment_prefix = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arcDisState*, i32, i32, i64)* @write_comments_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_comments_(%struct.arcDisState* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.arcDisState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.arcDisState* %0, %struct.arcDisState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.arcDisState*, %struct.arcDisState** %5, align 8
  %12 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.arcDisState*, %struct.arcDisState** %5, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = call i8* @post_address(%struct.arcDisState* %19, i64 %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @WRITE_COMMENT(i8* %30)
  br label %32

32:                                               ; preds = %29, %18
  br label %33

33:                                               ; preds = %32, %15
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %66, %33
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.arcDisState*, %struct.arcDisState** %5, align 8
  %37 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.arcDisState*, %struct.arcDisState** %5, align 8
  %45 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @comment_prefix, align 4
  %48 = call i32 @strcpy(i64 %46, i32 %47)
  br label %54

49:                                               ; preds = %40
  %50 = load %struct.arcDisState*, %struct.arcDisState** %5, align 8
  %51 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @strcat(i64 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.arcDisState*, %struct.arcDisState** %5, align 8
  %56 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.arcDisState*, %struct.arcDisState** %5, align 8
  %59 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @strncat(i64 %57, i32 %64, i32 8)
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %34

69:                                               ; preds = %34
  br label %70

70:                                               ; preds = %69, %4
  ret void
}

declare dso_local i8* @post_address(%struct.arcDisState*, i64) #1

declare dso_local i32 @WRITE_COMMENT(i8*) #1

declare dso_local i32 @strcpy(i64, i32) #1

declare dso_local i32 @strcat(i64, i8*) #1

declare dso_local i32 @strncat(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
