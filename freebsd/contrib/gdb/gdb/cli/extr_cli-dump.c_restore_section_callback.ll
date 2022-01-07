; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c_restore_section_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c_restore_section_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_data = type { i64, i64, i64 }
%struct.cleanup = type { i32 }

@SEC_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"skipping section %s...\0A\00", align 1
@xfree = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to read bfd file %s: '%s'.\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Restoring section %s (0x%lx to 0x%lx)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c" into memory (0x%s to 0x%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"restore: memory write failed (%s).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @restore_section_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_section_callback(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.callback_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cleanup*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.callback_data*
  store %struct.callback_data* %17, %struct.callback_data** %7, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @bfd_section_vma(i32* %18, i32* %19)
  store i64 %20, i64* %8, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @bfd_section_size(i32* %21, i32* %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @bfd_get_section_flags(i32* %28, i32* %29)
  %31 = load i32, i32* @SEC_LOAD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  br label %174

35:                                               ; preds = %3
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.callback_data*, %struct.callback_data** %7, align 8
  %38 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %36, %39
  br i1 %40, label %52, label %41

41:                                               ; preds = %35
  %42 = load %struct.callback_data*, %struct.callback_data** %7, align 8
  %43 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.callback_data*, %struct.callback_data** %7, align 8
  %49 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46, %35
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @bfd_section_name(i32* %53, i32* %54)
  %56 = call i32 (i8*, i32, ...) @printf_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %174

57:                                               ; preds = %46, %41
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.callback_data*, %struct.callback_data** %7, align 8
  %60 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.callback_data*, %struct.callback_data** %7, align 8
  %65 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = sub nsw i64 %66, %67
  store i64 %68, i64* %11, align 8
  br label %69

69:                                               ; preds = %63, %57
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %12, align 8
  %72 = sub nsw i64 %71, %70
  store i64 %72, i64* %12, align 8
  %73 = load %struct.callback_data*, %struct.callback_data** %7, align 8
  %74 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %69
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.callback_data*, %struct.callback_data** %7, align 8
  %80 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.callback_data*, %struct.callback_data** %7, align 8
  %86 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  %89 = load i64, i64* %12, align 8
  %90 = sub nsw i64 %89, %88
  store i64 %90, i64* %12, align 8
  br label %91

91:                                               ; preds = %83, %77, %69
  %92 = load i64, i64* %9, align 8
  %93 = call i8* @xmalloc(i64 %92)
  store i8* %93, i8** %14, align 8
  %94 = load i32, i32* @xfree, align 4
  %95 = load i8*, i8** %14, align 8
  %96 = call %struct.cleanup* @make_cleanup(i32 %94, i8* %95)
  store %struct.cleanup* %96, %struct.cleanup** %13, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @bfd_get_section_contents(i32* %97, i32* %98, i8* %99, i32 0, i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %91
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @bfd_get_filename(i32* %104)
  %106 = call i32 (...) @bfd_get_error()
  %107 = call i8* @bfd_errmsg(i32 %106)
  %108 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %105, i8* %107)
  br label %109

109:                                              ; preds = %103, %91
  %110 = load i32*, i32** %4, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @bfd_section_name(i32* %110, i32* %111)
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 (i8*, i32, ...) @printf_filtered(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %112, i64 %113, i64 %114)
  %116 = load %struct.callback_data*, %struct.callback_data** %7, align 8
  %117 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %109
  %121 = load %struct.callback_data*, %struct.callback_data** %7, align 8
  %122 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load %struct.callback_data*, %struct.callback_data** %7, align 8
  %127 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %125, %120, %109
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* %11, align 8
  %133 = add i64 %131, %132
  %134 = load %struct.callback_data*, %struct.callback_data** %7, align 8
  %135 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %133, %136
  %138 = call i32 @paddr_nz(i64 %137)
  %139 = load i64, i64* %8, align 8
  %140 = load i64, i64* %11, align 8
  %141 = add i64 %139, %140
  %142 = load %struct.callback_data*, %struct.callback_data** %7, align 8
  %143 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %141, %144
  %146 = load i64, i64* %12, align 8
  %147 = add i64 %145, %146
  %148 = call i32 @paddr_nz(i64 %147)
  %149 = call i32 (i8*, i32, ...) @printf_filtered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %138, i32 %148)
  br label %152

150:                                              ; preds = %125
  %151 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %130
  %153 = load i64, i64* %8, align 8
  %154 = load i64, i64* %11, align 8
  %155 = add nsw i64 %153, %154
  %156 = load %struct.callback_data*, %struct.callback_data** %7, align 8
  %157 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %155, %158
  %160 = load i8*, i8** %14, align 8
  %161 = load i64, i64* %11, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  %163 = load i64, i64* %12, align 8
  %164 = call i32 @target_write_memory(i64 %159, i8* %162, i64 %163)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %152
  %168 = load i32, i32* %15, align 4
  %169 = call i32 @safe_strerror(i32 %168)
  %170 = call i32 @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %167, %152
  %172 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %173 = call i32 @do_cleanups(%struct.cleanup* %172)
  br label %174

174:                                              ; preds = %171, %52, %34
  ret void
}

declare dso_local i64 @bfd_section_vma(i32*, i32*) #1

declare dso_local i64 @bfd_section_size(i32*, i32*) #1

declare dso_local i32 @bfd_get_section_flags(i32*, i32*) #1

declare dso_local i32 @printf_filtered(i8*, i32, ...) #1

declare dso_local i32 @bfd_section_name(i32*, i32*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @bfd_get_section_contents(i32*, i32*, i8*, i32, i64) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @paddr_nz(i64) #1

declare dso_local i32 @puts_filtered(i8*) #1

declare dso_local i32 @target_write_memory(i64, i8*, i64) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @safe_strerror(i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
