; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_get_frame_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_get_frame_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_id = type { i32 }
%struct.frame_info = type { %struct.TYPE_3__, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.frame_id }
%struct.TYPE_4__ = type { i32 (i32, i32*, %struct.frame_id*)*, i32 }

@null_frame_id = common dso_local global %struct.frame_id zeroinitializer, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@frame_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"{ get_frame_id (fi=%d) \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-> \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_frame_id(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.frame_id, align 4
  %3 = alloca %struct.frame_info*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %4 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %5 = icmp eq %struct.frame_info* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = bitcast %struct.frame_id* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.frame_id* @null_frame_id to i8*), i64 4, i1 false)
  br label %87

8:                                                ; preds = %1
  %9 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %10 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %81, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* @current_gdbarch, align 4
  %16 = call i32 @legacy_frame_p(i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @gdb_assert(i32 %19)
  %21 = load i64, i64* @frame_debug, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load i32, i32* @gdb_stdlog, align 4
  %25 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %26 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %23, %14
  %30 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %31 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp eq %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %36 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_4__* @frame_unwind_find_by_frame(i32 %37)
  %39 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %40 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %39, i32 0, i32 3
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %40, align 8
  %41 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %42 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %47 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %34, %29
  %49 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %50 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (i32, i32*, %struct.frame_id*)*, i32 (i32, i32*, %struct.frame_id*)** %52, align 8
  %54 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %55 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %58 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %57, i32 0, i32 1
  %59 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %60 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = call i32 %53(i32 %56, i32* %58, %struct.frame_id* %61)
  %63 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %64 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load i64, i64* @frame_debug, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %48
  %69 = load i32, i32* @gdb_stdlog, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @gdb_stdlog, align 4
  %72 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %73 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @fprint_frame_id(i32 %71, i32 %76)
  %78 = load i32, i32* @gdb_stdlog, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %68, %48
  br label %81

81:                                               ; preds = %80, %8
  %82 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %83 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = bitcast %struct.frame_id* %2 to i8*
  %86 = bitcast %struct.frame_id* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 4, i1 false)
  br label %87

87:                                               ; preds = %81, %6
  %88 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %2, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gdb_assert(i32) #2

declare dso_local i32 @legacy_frame_p(i32) #2

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #2

declare dso_local %struct.TYPE_4__* @frame_unwind_find_by_frame(i32) #2

declare dso_local i32 @fprint_frame_id(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
