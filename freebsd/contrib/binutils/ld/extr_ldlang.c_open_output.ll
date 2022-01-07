; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_open_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_open_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }

@output_target = common dso_local global i64 0, align 8
@command_line = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@ENDIAN_UNSET = common dso_local global i64 0, align 8
@get_target = common dso_local global i32 0, align 4
@ENDIAN_BIG = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i32 0, align 4
@BFD_ENDIAN_LITTLE = common dso_local global i32 0, align 4
@closest_target_match = common dso_local global i32 0, align 4
@winner = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [75 x i8] c"%P: warning: could not find any targets that match endianness requirement\0A\00", align 1
@bfd_error_invalid_target = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"%P%F: target %s not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%P%F: cannot open output file %s: %E\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@delete_output_file_on_failure = common dso_local global i32 0, align 4
@bfd_object = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"%P%F:%s: can not make object file: %E\0A\00", align 1
@ldfile_output_architecture = common dso_local global i32 0, align 4
@ldfile_output_machine = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"%P%F:%s: can not set architecture: %E\0A\00", align 1
@link_info = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"%P%F: can not create hash table: %E\0A\00", align 1
@g_switch_value = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @open_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_output(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i64 (...) @lang_get_output_target()
  store i64 %6, i64* @output_target, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @command_line, i32 0, i32 0), align 8
  %8 = load i64, i64* @ENDIAN_UNSET, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %68

10:                                               ; preds = %1
  %11 = load i32, i32* @get_target, align 4
  %12 = load i64, i64* @output_target, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = call %struct.TYPE_8__* @bfd_search_for_target(i32 %11, i8* %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %4, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %67

17:                                               ; preds = %10
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @command_line, i32 0, i32 0), align 8
  %19 = load i64, i64* @ENDIAN_BIG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @BFD_ENDIAN_BIG, align 4
  store i32 %22, i32* %5, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @BFD_ENDIAN_LITTLE, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* @output_target, align 8
  br label %65

50:                                               ; preds = %36, %31
  %51 = load i32, i32* @closest_target_match, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = bitcast %struct.TYPE_8__* %52 to i8*
  %54 = call %struct.TYPE_8__* @bfd_search_for_target(i32 %51, i8* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @winner, align 8
  %56 = icmp eq %struct.TYPE_9__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = call i32 @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %59 = call i32 (i32, ...) @einfo(i32 %58)
  br label %64

60:                                               ; preds = %50
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** @winner, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* @output_target, align 8
  br label %64

64:                                               ; preds = %60, %57
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %65, %25
  br label %67

67:                                               ; preds = %66, %10
  br label %68

68:                                               ; preds = %67, %1
  %69 = load i8*, i8** %2, align 8
  %70 = load i64, i64* @output_target, align 8
  %71 = call i32* @bfd_openw(i8* %69, i64 %70)
  store i32* %71, i32** %3, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = call i64 (...) @bfd_get_error()
  %76 = load i64, i64* @bfd_error_invalid_target, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i64, i64* @output_target, align 8
  %81 = call i32 (i32, ...) @einfo(i32 %79, i64 %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i8*, i8** %2, align 8
  %85 = call i32 (i32, ...) @einfo(i32 %83, i8* %84)
  br label %86

86:                                               ; preds = %82, %68
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* @delete_output_file_on_failure, align 4
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* @bfd_object, align 4
  %90 = call i32 @bfd_set_format(i32* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %86
  %93 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i8*, i8** %2, align 8
  %95 = call i32 (i32, ...) @einfo(i32 %93, i8* %94)
  br label %96

96:                                               ; preds = %92, %86
  %97 = load i32*, i32** %3, align 8
  %98 = load i32, i32* @ldfile_output_architecture, align 4
  %99 = load i32, i32* @ldfile_output_machine, align 4
  %100 = call i32 @bfd_set_arch_mach(i32* %97, i32 %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %96
  %103 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i8*, i8** %2, align 8
  %105 = call i32 (i32, ...) @einfo(i32 %103, i8* %104)
  br label %106

106:                                              ; preds = %102, %96
  %107 = load i32*, i32** %3, align 8
  %108 = call i32* @bfd_link_hash_table_create(i32* %107)
  store i32* %108, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @link_info, i32 0, i32 0), align 8
  %109 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @link_info, i32 0, i32 0), align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %113 = call i32 (i32, ...) @einfo(i32 %112)
  br label %114

114:                                              ; preds = %111, %106
  %115 = load i32*, i32** %3, align 8
  %116 = load i32, i32* @g_switch_value, align 4
  %117 = call i32 @bfd_set_gp_size(i32* %115, i32 %116)
  %118 = load i32*, i32** %3, align 8
  ret i32* %118
}

declare dso_local i64 @lang_get_output_target(...) #1

declare dso_local %struct.TYPE_8__* @bfd_search_for_target(i32, i8*) #1

declare dso_local i32 @einfo(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @bfd_openw(i8*, i64) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @bfd_set_format(i32*, i32) #1

declare dso_local i32 @bfd_set_arch_mach(i32*, i32, i32) #1

declare dso_local i32* @bfd_link_hash_table_create(i32*) #1

declare dso_local i32 @bfd_set_gp_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
