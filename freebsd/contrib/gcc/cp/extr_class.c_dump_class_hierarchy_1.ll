; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_dump_class_hierarchy_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_dump_class_hierarchy_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Class %s\0A\00", align 1
@TFF_PLAIN_IDENTIFIER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"   size=%lu align=%lu\0A\00", align 1
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"   base size=%lu base align=%lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @dump_class_hierarchy_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_class_hierarchy_1(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @TFF_PLAIN_IDENTIFIER, align 4
  %10 = call i8* @type_as_string(i32 %8, i32 %9)
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @TYPE_SIZE(i32 %13)
  %15 = call i32 @tree_low_cst(i32 %14, i32 0)
  %16 = load i32, i32* @BITS_PER_UNIT, align 4
  %17 = sdiv i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @TYPE_ALIGN(i32 %19)
  %21 = load i32, i32* @BITS_PER_UNIT, align 4
  %22 = sdiv i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %18, i64 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @CLASSTYPE_AS_BASE(i32 %26)
  %28 = call i32 @TYPE_SIZE(i32 %27)
  %29 = call i32 @tree_low_cst(i32 %28, i32 0)
  %30 = load i32, i32* @BITS_PER_UNIT, align 4
  %31 = sdiv i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @CLASSTYPE_AS_BASE(i32 %33)
  %35 = call i32 @TYPE_ALIGN(i32 %34)
  %36 = load i32, i32* @BITS_PER_UNIT, align 4
  %37 = sdiv i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %32, i64 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @TYPE_BINFO(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @TYPE_BINFO(i32 %44)
  %46 = call i32 @dump_class_hierarchy_r(i32* %40, i32 %41, i32 %43, i32 %45, i32 0)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @type_as_string(i32, i32) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @TYPE_SIZE(i32) #1

declare dso_local i32 @TYPE_ALIGN(i32) #1

declare dso_local i32 @CLASSTYPE_AS_BASE(i32) #1

declare dso_local i32 @dump_class_hierarchy_r(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_BINFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
