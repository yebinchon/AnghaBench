; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_break_at_finish_command_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_break_at_finish_command_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtabs_and_lines = type { i32, %struct.symtab_and_line* }
%struct.symtab_and_line = type { i32 }
%struct.cleanup = type { i32 }
%struct.symtab = type { i32 }

@default_breakpoint_valid = common dso_local global i64 0, align 8
@deprecated_selected_frame = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"*0x%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"No selected frame.\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"No default breakpoint address now.\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"*0x%s %s\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"No function contains the specified address\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Multiple breakpoints were set.\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"Use the \22delete\22 command to delete unwanted breakpoints.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @break_at_finish_command_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @break_at_finish_command_1(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.symtabs_and_lines, align 8
  %13 = alloca %struct.symtab_and_line, align 4
  %14 = alloca %struct.cleanup*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.symtabs_and_lines, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %3
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 105
  br i1 %27, label %28, label %67

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 102
  br i1 %33, label %34, label %67

34:                                               ; preds = %28
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 9
  br i1 %45, label %46, label %67

46:                                               ; preds = %40, %34, %3
  %47 = load i64, i64* @default_breakpoint_valid, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load i64, i64* @deprecated_selected_frame, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i64, i64* @deprecated_selected_frame, align 8
  %54 = call i32 @get_frame_pc(i64 %53)
  %55 = call i32 @paddr_nz(i32 %54)
  %56 = call i8* (i8*, i32, ...) @xstrprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i8* %56, i8** %7, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 1, i32* %18, align 4
  br label %60

60:                                               ; preds = %59, %52
  br label %63

61:                                               ; preds = %49
  %62 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %60
  br label %66

64:                                               ; preds = %46
  %65 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %63
  br label %76

67:                                               ; preds = %40, %28, %22
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = add nsw i32 %69, 1
  %71 = call i64 @xmalloc(i32 %70)
  %72 = inttoptr i64 %71 to i8*
  store i8* %72, i8** %7, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @strcpy(i8* %73, i8* %74)
  br label %76

76:                                               ; preds = %67, %66
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i8*, i8** %4, align 8
  store i8* %80, i8** %15, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @strlen(i8* %81)
  store i32 %82, i32* %16, align 4
  br label %98

83:                                               ; preds = %76
  %84 = load i8*, i8** %4, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load i8*, i8** %4, align 8
  %88 = call i8* @strchr(i8* %87, i8 signext 32)
  store i8* %88, i8** %15, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i8*, i8** %15, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %15, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = call i32 @strlen(i8* %94)
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %91, %86
  br label %97

97:                                               ; preds = %96, %83
  br label %98

98:                                               ; preds = %97, %79
  %99 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  store %struct.symtab_and_line* null, %struct.symtab_and_line** %99, align 8
  %100 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load i8*, i8** %7, align 8
  store i8* %101, i8** %9, align 8
  %102 = call { i32, %struct.symtab_and_line* } @decode_line_1(i8** %7, i32 1, %struct.symtab* null, i32 0, i8*** null, i32* null)
  %103 = bitcast %struct.symtabs_and_lines* %19 to { i32, %struct.symtab_and_line* }*
  %104 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %103, i32 0, i32 0
  %105 = extractvalue { i32, %struct.symtab_and_line* } %102, 0
  store i32 %105, i32* %104, align 8
  %106 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %103, i32 0, i32 1
  %107 = extractvalue { i32, %struct.symtab_and_line* } %102, 1
  store %struct.symtab_and_line* %107, %struct.symtab_and_line** %106, align 8
  %108 = bitcast %struct.symtabs_and_lines* %12 to i8*
  %109 = bitcast %struct.symtabs_and_lines* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 16, i1 false)
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @xfree(i8* %110)
  %112 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  %113 = load %struct.symtab_and_line*, %struct.symtab_and_line** %112, align 8
  %114 = call %struct.cleanup* @make_cleanup(i32 (i8*)* @xfree, %struct.symtab_and_line* %113)
  store %struct.cleanup* %114, %struct.cleanup** %14, align 8
  store i32 0, i32* %17, align 4
  br label %115

115:                                              ; preds = %155, %98
  %116 = load i32, i32* %17, align 4
  %117 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %158

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  %122 = load %struct.symtab_and_line*, %struct.symtab_and_line** %121, align 8
  %123 = load i32, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %122, i64 %124
  %126 = bitcast %struct.symtab_and_line* %13 to i8*
  %127 = bitcast %struct.symtab_and_line* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %126, i8* align 4 %127, i64 4, i1 false)
  %128 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @find_pc_partial_function(i32 %129, i8** null, i32* %10, i32* %11)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %120
  %133 = load i8*, i8** %8, align 8
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @paddr_nz(i32 %137)
  %139 = load i8*, i8** %15, align 8
  %140 = call i8* (i8*, i32, ...) @xstrprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %138, i8* %139)
  store i8* %140, i8** %8, align 8
  br label %145

141:                                              ; preds = %132
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @paddr_nz(i32 %142)
  %144 = call i8* (i8*, i32, ...) @xstrprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %143)
  store i8* %144, i8** %8, align 8
  br label %145

145:                                              ; preds = %141, %136
  %146 = load i8*, i8** %8, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @break_command_1(i8* %146, i32 %147, i32 %148, i32* null)
  %150 = load i8*, i8** %8, align 8
  %151 = call i32 @xfree(i8* %150)
  br label %154

152:                                              ; preds = %120
  %153 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %145
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %17, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %17, align 4
  br label %115

158:                                              ; preds = %115
  %159 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp sgt i32 %160, 1
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = call i32 @warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %164 = call i32 @warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %158
  %166 = load %struct.cleanup*, %struct.cleanup** %14, align 8
  %167 = call i32 @do_cleanups(%struct.cleanup* %166)
  ret void
}

declare dso_local i8* @xstrprintf(i8*, i32, ...) #1

declare dso_local i32 @paddr_nz(i32) #1

declare dso_local i32 @get_frame_pc(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local { i32, %struct.symtab_and_line* } @decode_line_1(i8**, i32, %struct.symtab*, i32, i8***, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xfree(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32 (i8*)*, %struct.symtab_and_line*) #1

declare dso_local i64 @find_pc_partial_function(i32, i8**, i32*, i32*) #1

declare dso_local i32 @break_command_1(i8*, i32, i32, i32*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
