; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_memalloc.c_growstackblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_memalloc.c_growstackblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_block = type { %struct.stack_block* }

@stacknleft = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Out of space\00", align 1
@stacknxt = common dso_local global i8* null, align 8
@stackp = common dso_local global %struct.stack_block* null, align 8
@INTOFF = common dso_local global i32 0, align 4
@sstrend = common dso_local global i8* null, align 8
@INTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @growstackblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @growstackblock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stack_block*, align 8
  %8 = alloca %struct.stack_block*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @stacknleft, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @stacknleft, align 4
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @INT_MAX, align 4
  %17 = sdiv i32 %16, 2
  %18 = call i32 @ALIGN(i32 8)
  %19 = sub nsw i32 %17, %18
  %20 = icmp uge i32 %15, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %14
  %24 = load i32, i32* @stacknleft, align 4
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %2, align 4
  %27 = call i32 @ALIGN(i32 8)
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %2, align 4
  store i32 512, i32* %4, align 4
  br label %30

30:                                               ; preds = %34, %23
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = shl i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %30

37:                                               ; preds = %30
  %38 = load i8*, i8** @stacknxt, align 8
  store i8* %38, i8** %5, align 8
  %39 = load i32, i32* @stacknleft, align 4
  store i32 %39, i32* %6, align 4
  %40 = load %struct.stack_block*, %struct.stack_block** @stackp, align 8
  %41 = icmp ne %struct.stack_block* %40, null
  br i1 %41, label %42, label %78

42:                                               ; preds = %37
  %43 = load i8*, i8** @stacknxt, align 8
  %44 = load %struct.stack_block*, %struct.stack_block** @stackp, align 8
  %45 = call i8* @SPACE(%struct.stack_block* %44)
  %46 = icmp eq i8* %43, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %42
  %48 = load i32, i32* @INTOFF, align 4
  %49 = load %struct.stack_block*, %struct.stack_block** @stackp, align 8
  store %struct.stack_block* %49, %struct.stack_block** %8, align 8
  %50 = load %struct.stack_block*, %struct.stack_block** %8, align 8
  %51 = getelementptr inbounds %struct.stack_block, %struct.stack_block* %50, i32 0, i32 0
  %52 = load %struct.stack_block*, %struct.stack_block** %51, align 8
  store %struct.stack_block* %52, %struct.stack_block** @stackp, align 8
  %53 = load %struct.stack_block*, %struct.stack_block** %8, align 8
  %54 = ptrtoint %struct.stack_block* %53 to i32
  %55 = load i32, i32* %4, align 4
  %56 = call %struct.stack_block* @ckrealloc(i32 %54, i32 %55)
  store %struct.stack_block* %56, %struct.stack_block** %7, align 8
  %57 = load %struct.stack_block*, %struct.stack_block** @stackp, align 8
  %58 = load %struct.stack_block*, %struct.stack_block** %7, align 8
  %59 = getelementptr inbounds %struct.stack_block, %struct.stack_block* %58, i32 0, i32 0
  store %struct.stack_block* %57, %struct.stack_block** %59, align 8
  %60 = load %struct.stack_block*, %struct.stack_block** %7, align 8
  store %struct.stack_block* %60, %struct.stack_block** @stackp, align 8
  %61 = load %struct.stack_block*, %struct.stack_block** %7, align 8
  %62 = call i8* @SPACE(%struct.stack_block* %61)
  store i8* %62, i8** @stacknxt, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = load i8*, i8** @stacknxt, align 8
  %66 = load %struct.stack_block*, %struct.stack_block** %7, align 8
  %67 = bitcast %struct.stack_block* %66 to i8*
  %68 = ptrtoint i8* %65 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sub nsw i64 %64, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* @stacknleft, align 4
  %73 = load i8*, i8** @stacknxt, align 8
  %74 = load i32, i32* @stacknleft, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8* %76, i8** @sstrend, align 8
  %77 = load i32, i32* @INTON, align 4
  br label %94

78:                                               ; preds = %42, %37
  %79 = call i32 @ALIGN(i32 8)
  %80 = load i32, i32* %4, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i8* @stalloc(i32 %82)
  store i8* %83, i8** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load i8*, i8** %3, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @memcpy(i8* %87, i8* %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %78
  %92 = load i8*, i8** %3, align 8
  %93 = call i32 @stunalloc(i8* %92)
  br label %94

94:                                               ; preds = %91, %47
  ret void
}

declare dso_local i32 @ALIGN(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @SPACE(%struct.stack_block*) #1

declare dso_local %struct.stack_block* @ckrealloc(i32, i32) #1

declare dso_local i8* @stalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @stunalloc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
