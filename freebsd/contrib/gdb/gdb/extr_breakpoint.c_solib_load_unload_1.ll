; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_solib_load_unload_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_solib_load_unload_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.breakpoint = type { i8*, i32, i8*, i8*, i32, i32, i32*, i64 }
%struct.symtabs_and_lines = type { i32, i8* }
%struct.cleanup = type { i32 }
%struct.symtab = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"Unable to set a breakpoint on dynamic linker callback.\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Suggest linking with /opt/langtools/lib/end.o.\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"GDB will be unable to track shl_load/shl_unload calls\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Unable to set unique breakpoint on dynamic linker callback.\00", align 1
@xfree = common dso_local global i32 0, align 4
@null_cleanup = common dso_local global i32 0, align 4
@breakpoint_count = common dso_local global i64 0, align 8
@bp_enabled = common dso_local global i32 0, align 4
@disp_del = common dso_local global i32 0, align 4
@disp_donttouch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i8*, i32)* @solib_load_unload_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solib_load_unload_1(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.breakpoint*, align 8
  %12 = alloca %struct.symtabs_and_lines, align 8
  %13 = alloca %struct.cleanup*, align 8
  %14 = alloca %struct.cleanup*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.symtabs_and_lines, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.cleanup* null, %struct.cleanup** %14, align 8
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8** null, i8*** %17, align 8
  store i32 -1, i32* %18, align 4
  %21 = call { i32, i8* } @decode_line_1(i8** %6, i32 1, %struct.symtab* null, i32 0, i8*** %17, i32* null)
  %22 = bitcast %struct.symtabs_and_lines* %19 to { i32, i8* }*
  %23 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %22, i32 0, i32 0
  %24 = extractvalue { i32, i8* } %21, 0
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %22, i32 0, i32 1
  %26 = extractvalue { i32, i8* } %21, 1
  store i8* %26, i8** %25, align 8
  %27 = bitcast %struct.symtabs_and_lines* %12 to i8*
  %28 = bitcast %struct.symtabs_and_lines* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 16, i1 false)
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %16, align 8
  %30 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = call i32 @warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %173

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = call i32 @warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 @warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %173

44:                                               ; preds = %37
  %45 = load i32, i32* @xfree, align 4
  %46 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call %struct.cleanup* (i32, ...) @make_cleanup(i32 %45, i8* %47)
  store %struct.cleanup* %48, %struct.cleanup** %13, align 8
  %49 = load i8**, i8*** %17, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %44
  %52 = load i32, i32* @xfree, align 4
  %53 = load i8**, i8*** %17, align 8
  %54 = call %struct.cleanup* (i32, ...) @make_cleanup(i32 %52, i8** %53)
  %55 = load i32, i32* @null_cleanup, align 4
  %56 = call %struct.cleanup* (i32, ...) @make_cleanup(i32 %55, i32 0)
  store %struct.cleanup* %56, %struct.cleanup** %14, align 8
  %57 = load i8**, i8*** %17, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load i32, i32* @xfree, align 4
  %63 = load i8**, i8*** %17, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call %struct.cleanup* (i32, ...) @make_cleanup(i32 %62, i8* %65)
  br label %67

67:                                               ; preds = %61, %51
  br label %68

68:                                               ; preds = %67, %44
  %69 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = call i32 @resolve_sal_pc(i8* %71)
  %73 = load i8**, i8*** %17, align 8
  %74 = icmp ne i8** %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.cleanup*, %struct.cleanup** %14, align 8
  %77 = call i32 @discard_cleanups(%struct.cleanup* %76)
  br label %78

78:                                               ; preds = %75, %68
  %79 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = load i32, i32* %10, align 4
  %84 = call %struct.breakpoint* @set_raw_breakpoint(i8 signext %82, i32 %83)
  store %struct.breakpoint* %84, %struct.breakpoint** %11, align 8
  %85 = load i64, i64* @breakpoint_count, align 8
  %86 = add nsw i64 %85, 1
  %87 = call i32 @set_breakpoint_count(i64 %86)
  %88 = load i64, i64* @breakpoint_count, align 8
  %89 = load %struct.breakpoint*, %struct.breakpoint** %11, align 8
  %90 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %89, i32 0, i32 7
  store i64 %88, i64* %90, align 8
  %91 = load %struct.breakpoint*, %struct.breakpoint** %11, align 8
  %92 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %91, i32 0, i32 6
  store i32* null, i32** %92, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %78
  br label %101

96:                                               ; preds = %78
  %97 = load i8*, i8** %9, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = call i8* @savestring(i8* %97, i32 %99)
  br label %101

101:                                              ; preds = %96, %95
  %102 = phi i8* [ null, %95 ], [ %100, %96 ]
  %103 = load %struct.breakpoint*, %struct.breakpoint** %11, align 8
  %104 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %18, align 4
  %106 = load %struct.breakpoint*, %struct.breakpoint** %11, align 8
  %107 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load i8**, i8*** %17, align 8
  %109 = icmp ne i8** %108, null
  br i1 %109, label %110, label %121

110:                                              ; preds = %101
  %111 = load i8**, i8*** %17, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 0
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i8**, i8*** %17, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.breakpoint*, %struct.breakpoint** %11, align 8
  %120 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  br label %136

121:                                              ; preds = %110, %101
  %122 = load i8*, i8** %15, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load i8*, i8** %15, align 8
  %126 = load i8*, i8** %16, align 8
  %127 = load i8*, i8** %15, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  %132 = call i8* @savestring(i8* %125, i32 %131)
  %133 = load %struct.breakpoint*, %struct.breakpoint** %11, align 8
  %134 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %124, %121
  br label %136

136:                                              ; preds = %135, %115
  %137 = load i32, i32* @bp_enabled, align 4
  %138 = load %struct.breakpoint*, %struct.breakpoint** %11, align 8
  %139 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* @disp_del, align 4
  br label %146

144:                                              ; preds = %136
  %145 = load i32, i32* @disp_donttouch, align 4
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  %148 = load %struct.breakpoint*, %struct.breakpoint** %11, align 8
  %149 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = icmp eq i8* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load %struct.breakpoint*, %struct.breakpoint** %11, align 8
  %154 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %153, i32 0, i32 3
  store i8* null, i8** %154, align 8
  br label %168

155:                                              ; preds = %146
  %156 = load i8*, i8** %8, align 8
  %157 = call i32 @strlen(i8* %156)
  %158 = add nsw i32 %157, 1
  %159 = call i64 @xmalloc(i32 %158)
  %160 = inttoptr i64 %159 to i8*
  %161 = load %struct.breakpoint*, %struct.breakpoint** %11, align 8
  %162 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %161, i32 0, i32 3
  store i8* %160, i8** %162, align 8
  %163 = load %struct.breakpoint*, %struct.breakpoint** %11, align 8
  %164 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %163, i32 0, i32 3
  %165 = load i8*, i8** %164, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = call i32 @strcpy(i8* %165, i8* %166)
  br label %168

168:                                              ; preds = %155, %152
  %169 = load %struct.breakpoint*, %struct.breakpoint** %11, align 8
  %170 = call i32 @mention(%struct.breakpoint* %169)
  %171 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %172 = call i32 @do_cleanups(%struct.cleanup* %171)
  br label %173

173:                                              ; preds = %168, %41, %33
  ret void
}

declare dso_local { i32, i8* } @decode_line_1(i8**, i32, %struct.symtab*, i32, i8***, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @warning(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, ...) #1

declare dso_local i32 @resolve_sal_pc(i8*) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

declare dso_local %struct.breakpoint* @set_raw_breakpoint(i8 signext, i32) #1

declare dso_local i32 @set_breakpoint_count(i64) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @mention(%struct.breakpoint*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
