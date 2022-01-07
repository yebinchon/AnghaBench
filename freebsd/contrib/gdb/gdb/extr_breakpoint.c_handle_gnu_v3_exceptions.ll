; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_handle_gnu_v3_exceptions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_handle_gnu_v3_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtabs_and_lines = type { i64, i8* }
%struct.breakpoint = type { i32, i8*, i32*, i32, i32, i32*, i32*, i64 }

@EX_EVENT_CATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"__cxa_begin_catch\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"__cxa_throw\00", align 1
@bp_breakpoint = common dso_local global i32 0, align 4
@breakpoint_count = common dso_local global i64 0, align 8
@bp_enabled = common dso_local global i32 0, align 4
@disp_del = common dso_local global i32 0, align 4
@disp_donttouch = common dso_local global i32 0, align 4
@gnu_v3_exception_catchpoint_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @handle_gnu_v3_exceptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_gnu_v3_exceptions(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.symtabs_and_lines, align 8
  %13 = alloca %struct.breakpoint*, align 8
  %14 = alloca %struct.symtabs_and_lines, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @EX_EVENT_CATCH, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = call i8* @xstrdup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %10, align 8
  br label %22

20:                                               ; preds = %4
  %21 = call i8* @xstrdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %10, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i8*, i8** %10, align 8
  store i8* %23, i8** %11, align 8
  %24 = call { i64, i8* } @decode_line_1(i8** %11, i32 1, i32* null, i32 0, i32* null, i32* null)
  %25 = bitcast %struct.symtabs_and_lines* %14 to { i64, i8* }*
  %26 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %25, i32 0, i32 0
  %27 = extractvalue { i64, i8* } %24, 0
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %25, i32 0, i32 1
  %29 = extractvalue { i64, i8* } %24, 1
  store i8* %29, i8** %28, align 8
  %30 = bitcast %struct.symtabs_and_lines* %12 to i8*
  %31 = bitcast %struct.symtabs_and_lines* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  %32 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @xfree(i8* %36)
  store i32 0, i32* %5, align 4
  br label %90

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = load i32, i32* @bp_breakpoint, align 4
  %44 = call %struct.breakpoint* @set_raw_breakpoint(i8 signext %42, i32 %43)
  store %struct.breakpoint* %44, %struct.breakpoint** %13, align 8
  %45 = load i64, i64* @breakpoint_count, align 8
  %46 = add nsw i64 %45, 1
  %47 = call i32 @set_breakpoint_count(i64 %46)
  %48 = load i64, i64* @breakpoint_count, align 8
  %49 = load %struct.breakpoint*, %struct.breakpoint** %13, align 8
  %50 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %49, i32 0, i32 7
  store i64 %48, i64* %50, align 8
  %51 = load %struct.breakpoint*, %struct.breakpoint** %13, align 8
  %52 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %51, i32 0, i32 6
  store i32* null, i32** %52, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  br label %61

56:                                               ; preds = %38
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = call i32* @savestring(i8* %57, i32 %59)
  br label %61

61:                                               ; preds = %56, %55
  %62 = phi i32* [ null, %55 ], [ %60, %56 ]
  %63 = load %struct.breakpoint*, %struct.breakpoint** %13, align 8
  %64 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %63, i32 0, i32 5
  store i32* %62, i32** %64, align 8
  %65 = load %struct.breakpoint*, %struct.breakpoint** %13, align 8
  %66 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %65, i32 0, i32 0
  store i32 -1, i32* %66, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load %struct.breakpoint*, %struct.breakpoint** %13, align 8
  %69 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @bp_enabled, align 4
  %71 = load %struct.breakpoint*, %struct.breakpoint** %13, align 8
  %72 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i32, i32* @disp_del, align 4
  br label %79

77:                                               ; preds = %61
  %78 = load i32, i32* @disp_donttouch, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = load %struct.breakpoint*, %struct.breakpoint** %13, align 8
  %82 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.breakpoint*, %struct.breakpoint** %13, align 8
  %84 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %83, i32 0, i32 2
  store i32* @gnu_v3_exception_catchpoint_ops, i32** %84, align 8
  %85 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @xfree(i8* %86)
  %88 = load %struct.breakpoint*, %struct.breakpoint** %13, align 8
  %89 = call i32 @mention(%struct.breakpoint* %88)
  store i32 1, i32* %5, align 4
  br label %90

90:                                               ; preds = %79, %35
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local { i64, i8* } @decode_line_1(i8**, i32, i32*, i32, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xfree(i8*) #1

declare dso_local %struct.breakpoint* @set_raw_breakpoint(i8 signext, i32) #1

declare dso_local i32 @set_breakpoint_count(i64) #1

declare dso_local i32* @savestring(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mention(%struct.breakpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
