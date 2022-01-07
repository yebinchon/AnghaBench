; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_print_symbol_info_sysv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_print_symbol_info_sysv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extended_symbol_info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%-20s|\00", align 1
@print_width = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"                \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"|   %c  |\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%18s|  \00", align 1
@desc_format = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"|     |\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%18s|\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"                  |\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"|     |%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.extended_symbol_info*, i32*)* @print_symbol_info_sysv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_symbol_info_sysv(%struct.extended_symbol_info* %0, i32* %1) #0 {
  %3 = alloca %struct.extended_symbol_info*, align 8
  %4 = alloca i32*, align 8
  store %struct.extended_symbol_info* %0, %struct.extended_symbol_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %6 = call i32 @SYM_NAME(%struct.extended_symbol_info* %5)
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @print_symname(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %6, i32* %7)
  %9 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %10 = call signext i8 @SYM_TYPE(%struct.extended_symbol_info* %9)
  %11 = call i64 @bfd_is_undefined_symclass(i8 signext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* @print_width, align 4
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %20

18:                                               ; preds = %13
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %16
  br label %26

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %24 = call i64 @SYM_VALUE(%struct.extended_symbol_info* %23)
  %25 = call i32 @print_value(i32* %22, i64 %24)
  br label %26

26:                                               ; preds = %21, %20
  %27 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %28 = call signext i8 @SYM_TYPE(%struct.extended_symbol_info* %27)
  %29 = sext i8 %28 to i32
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %32 = call signext i8 @SYM_TYPE(%struct.extended_symbol_info* %31)
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 45
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %37 = call i8* @SYM_STAB_NAME(%struct.extended_symbol_info* %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** @desc_format, align 8
  %40 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %41 = call i32 @SYM_STAB_DESC(%struct.extended_symbol_info* %40)
  %42 = call i32 (i8*, ...) @printf(i8* %39, i32 %41)
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %96

44:                                               ; preds = %26
  %45 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %46 = getelementptr inbounds %struct.extended_symbol_info, %struct.extended_symbol_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %51 = getelementptr inbounds %struct.extended_symbol_info, %struct.extended_symbol_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ELF_ST_TYPE(i32 %55)
  %57 = call i8* @get_symbol_type(i32 %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %57)
  br label %61

59:                                               ; preds = %44
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %49
  %62 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %63 = call i64 @SYM_SIZE(%struct.extended_symbol_info* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %68 = call i64 @SYM_SIZE(%struct.extended_symbol_info* %67)
  %69 = call i32 @print_value(i32* %66, i64 %68)
  br label %78

70:                                               ; preds = %61
  %71 = load i32, i32* @print_width, align 4
  %72 = icmp eq i32 %71, 32
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %77

75:                                               ; preds = %70
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %73
  br label %78

78:                                               ; preds = %77, %65
  %79 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %80 = getelementptr inbounds %struct.extended_symbol_info, %struct.extended_symbol_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = icmp ne %struct.TYPE_8__* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %85 = getelementptr inbounds %struct.extended_symbol_info, %struct.extended_symbol_info* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %91)
  br label %95

93:                                               ; preds = %78
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %83
  br label %96

96:                                               ; preds = %95, %35
  ret void
}

declare dso_local i32 @print_symname(i8*, i32, i32*) #1

declare dso_local i32 @SYM_NAME(%struct.extended_symbol_info*) #1

declare dso_local i64 @bfd_is_undefined_symclass(i8 signext) #1

declare dso_local signext i8 @SYM_TYPE(%struct.extended_symbol_info*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_value(i32*, i64) #1

declare dso_local i64 @SYM_VALUE(%struct.extended_symbol_info*) #1

declare dso_local i8* @SYM_STAB_NAME(%struct.extended_symbol_info*) #1

declare dso_local i32 @SYM_STAB_DESC(%struct.extended_symbol_info*) #1

declare dso_local i8* @get_symbol_type(i32) #1

declare dso_local i32 @ELF_ST_TYPE(i32) #1

declare dso_local i64 @SYM_SIZE(%struct.extended_symbol_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
