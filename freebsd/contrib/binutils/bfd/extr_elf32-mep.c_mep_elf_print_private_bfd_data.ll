; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-mep.c_mep_elf_print_private_bfd_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-mep.c_mep_elf_print_private_bfd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"private flags = 0x%lx\00", align 1
@EF_MEP_CPU_MASK = common dso_local global i32 0, align 4
@core_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"  core: %s\00", align 1
@EF_MEP_INDEX_MASK = common dso_local global i32 0, align 4
@config_names = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"  me_module: %s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @mep_elf_print_private_bfd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mep_elf_print_private_bfd_data(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i1 [ false, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @BFD_ASSERT(i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @_bfd_elf_print_private_bfd_data(i32* %19, i8* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call %struct.TYPE_2__* @elf_elfheader(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* %27, i64 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @EF_MEP_CPU_MASK, align 4
  %33 = and i32 %31, %32
  %34 = ashr i32 %33, 24
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i8**, i8*** @core_names, align 8
  %37 = call i32 @ARRAY_SIZE(i8** %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %15
  %40 = load i32*, i32** %5, align 8
  %41 = load i8**, i8*** @core_names, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %39, %15
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @EF_MEP_INDEX_MASK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i8**, i8*** @config_names, align 8
  %53 = call i32 @ARRAY_SIZE(i8** %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load i32*, i32** %5, align 8
  %57 = load i8**, i8*** @config_names, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %55, %47
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @fputc(i8 signext 10, i32* %64)
  %66 = load i32, i32* @TRUE, align 4
  ret i32 %66
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @_bfd_elf_print_private_bfd_data(i32*, i8*) #1

declare dso_local %struct.TYPE_2__* @elf_elfheader(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
