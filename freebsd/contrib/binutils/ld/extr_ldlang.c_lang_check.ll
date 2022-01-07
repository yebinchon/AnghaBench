; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@file_chain = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@output_bfd = common dso_local global i32* null, align 8
@command_line = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@link_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@HAS_RELOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"%P%F: Relocatable linking with relocations from format %s (%B) to format %s (%B) is not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"%P%X: %s architecture of input file `%B' is incompatible with %s output\0A\00", align 1
@ignore_bfd_errors = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"%P%X: failed to merge target specific data of file %B\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lang_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lang_check() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @file_chain, i32 0, i32 0), align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %1, align 8
  br label %6

6:                                                ; preds = %98, %0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %9, label %103

9:                                                ; preds = %6
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = load i32*, i32** @output_bfd, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @command_line, i32 0, i32 1), align 8
  %17 = call i32* @bfd_arch_get_compatible(i32* %14, i32* %15, i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @link_info, i32 0, i32 1), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %9
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @link_info, i32 0, i32 0), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %20, %9
  %24 = load i32*, i32** %3, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %2, align 8
  %28 = call i64 @bfd_get_flavour(i32* %27)
  %29 = load i32*, i32** @output_bfd, align 8
  %30 = call i64 @bfd_get_flavour(i32* %29)
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %26, %23
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @bfd_get_file_flags(i32* %33)
  %35 = load i32, i32* @HAS_RELOC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = call i32 @_(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0))
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @bfd_get_target(i32* %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32*, i32** %2, align 8
  %45 = load i32*, i32** @output_bfd, align 8
  %46 = call i32 @bfd_get_target(i32* %45)
  %47 = load i32*, i32** @output_bfd, align 8
  %48 = call i32 (i32, i32*, ...) @einfo(i32 %39, i32* %43, i32* %44, i32 %46, i32* %47)
  br label %49

49:                                               ; preds = %38, %32, %26, %20
  %50 = load i32*, i32** %3, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @command_line, i32 0, i32 0), align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = call i32 @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @bfd_printable_name(i32* %57)
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32*
  %61 = load i32*, i32** %2, align 8
  %62 = load i32*, i32** @output_bfd, align 8
  %63 = call i32 @bfd_printable_name(i32* %62)
  %64 = call i32 (i32, i32*, ...) @einfo(i32 %56, i32* %60, i32* %61, i32 %63)
  br label %65

65:                                               ; preds = %55, %52
  br label %97

66:                                               ; preds = %49
  %67 = load i32*, i32** %2, align 8
  %68 = call i64 @bfd_count_sections(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %66
  store i32* null, i32** %4, align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @command_line, i32 0, i32 0), align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32*, i32** @ignore_bfd_errors, align 8
  %75 = call i32* @bfd_set_error_handler(i32* %74)
  store i32* %75, i32** %4, align 8
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32*, i32** %2, align 8
  %78 = load i32*, i32** @output_bfd, align 8
  %79 = call i32 @bfd_merge_private_bfd_data(i32* %77, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %76
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @command_line, i32 0, i32 0), align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 (i32, i32*, ...) @einfo(i32 %85, i32* %86)
  br label %88

88:                                               ; preds = %84, %81
  br label %89

89:                                               ; preds = %88, %76
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @command_line, i32 0, i32 0), align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32*, i32** %4, align 8
  %94 = call i32* @bfd_set_error_handler(i32* %93)
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %66
  br label %97

97:                                               ; preds = %96, %65
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  store %struct.TYPE_7__* %102, %struct.TYPE_7__** %1, align 8
  br label %6

103:                                              ; preds = %6
  ret void
}

declare dso_local i32* @bfd_arch_get_compatible(i32*, i32*, i32) #1

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local i32 @bfd_get_file_flags(i32*) #1

declare dso_local i32 @einfo(i32, i32*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_get_target(i32*) #1

declare dso_local i32 @bfd_printable_name(i32*) #1

declare dso_local i64 @bfd_count_sections(i32*) #1

declare dso_local i32* @bfd_set_error_handler(i32*) #1

declare dso_local i32 @bfd_merge_private_bfd_data(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
