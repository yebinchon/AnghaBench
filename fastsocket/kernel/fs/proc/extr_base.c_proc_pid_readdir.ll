; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pid_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pid_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_entry = type { i32 }
%struct.file = type { i64, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.pid_namespace* }
%struct.pid_namespace = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.task_struct = type { i32 }
%struct.tgid_iter = type { i64, %struct.task_struct* }

@PID_MAX_LIMIT = common dso_local global i64 0, align 8
@TGID_OFFSET = common dso_local global i64 0, align 8
@FIRST_PROCESS_ENTRY = common dso_local global i32 0, align 4
@proc_base_stuff = common dso_local global %struct.pid_entry* null, align 8
@fake_filldir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_pid_readdir(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.tgid_iter, align 8
  %10 = alloca %struct.pid_namespace*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pid_entry*, align 8
  %13 = alloca %struct.tgid_iter, align 8
  %14 = alloca %struct.tgid_iter, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PID_MAX_LIMIT, align 8
  %19 = load i64, i64* @TGID_OFFSET, align 8
  %20 = add nsw i64 %18, %19
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %160

23:                                               ; preds = %3
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @FIRST_PROCESS_ENTRY, align 4
  %28 = zext i32 %27 to i64
  %29 = sub nsw i64 %26, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.task_struct* @get_proc_task(i32 %36)
  store %struct.task_struct* %37, %struct.task_struct** %8, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %39 = icmp ne %struct.task_struct* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %23
  br label %160

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %61, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.pid_entry*, %struct.pid_entry** @proc_base_stuff, align 8
  %45 = call i32 @ARRAY_SIZE(%struct.pid_entry* %44)
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  %48 = load %struct.pid_entry*, %struct.pid_entry** @proc_base_stuff, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %48, i64 %50
  store %struct.pid_entry* %51, %struct.pid_entry** %12, align 8
  %52 = load %struct.file*, %struct.file** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %56 = load %struct.pid_entry*, %struct.pid_entry** %12, align 8
  %57 = call i64 @proc_base_fill_cache(%struct.file* %52, i8* %53, i32 %54, %struct.task_struct* %55, %struct.pid_entry* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %157

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.file*, %struct.file** %4, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %42

68:                                               ; preds = %42
  %69 = load %struct.file*, %struct.file** %4, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.pid_namespace*, %struct.pid_namespace** %74, align 8
  store %struct.pid_namespace* %75, %struct.pid_namespace** %10, align 8
  %76 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %9, i32 0, i32 1
  store %struct.task_struct* null, %struct.task_struct** %76, align 8
  %77 = load %struct.file*, %struct.file** %4, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TGID_OFFSET, align 8
  %81 = sub nsw i64 %79, %80
  %82 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %9, i32 0, i32 0
  store i64 %81, i64* %82, align 8
  %83 = load %struct.pid_namespace*, %struct.pid_namespace** %10, align 8
  %84 = bitcast %struct.tgid_iter* %9 to { i64, %struct.task_struct* }*
  %85 = getelementptr inbounds { i64, %struct.task_struct* }, { i64, %struct.task_struct* }* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds { i64, %struct.task_struct* }, { i64, %struct.task_struct* }* %84, i32 0, i32 1
  %88 = load %struct.task_struct*, %struct.task_struct** %87, align 8
  %89 = call { i64, %struct.task_struct* } @next_tgid(%struct.pid_namespace* %83, i64 %86, %struct.task_struct* %88)
  %90 = bitcast %struct.tgid_iter* %13 to { i64, %struct.task_struct* }*
  %91 = getelementptr inbounds { i64, %struct.task_struct* }, { i64, %struct.task_struct* }* %90, i32 0, i32 0
  %92 = extractvalue { i64, %struct.task_struct* } %89, 0
  store i64 %92, i64* %91, align 8
  %93 = getelementptr inbounds { i64, %struct.task_struct* }, { i64, %struct.task_struct* }* %90, i32 0, i32 1
  %94 = extractvalue { i64, %struct.task_struct* } %89, 1
  store %struct.task_struct* %94, %struct.task_struct** %93, align 8
  %95 = bitcast %struct.tgid_iter* %9 to i8*
  %96 = bitcast %struct.tgid_iter* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 16, i1 false)
  br label %97

97:                                               ; preds = %133, %68
  %98 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %9, i32 0, i32 1
  %99 = load %struct.task_struct*, %struct.task_struct** %98, align 8
  %100 = icmp ne %struct.task_struct* %99, null
  br i1 %100, label %101, label %151

101:                                              ; preds = %97
  %102 = load %struct.pid_namespace*, %struct.pid_namespace** %10, align 8
  %103 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %9, i32 0, i32 1
  %104 = load %struct.task_struct*, %struct.task_struct** %103, align 8
  %105 = call i64 @has_pid_permissions(%struct.pid_namespace* %102, %struct.task_struct* %104, i32 2)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %11, align 4
  br label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @fake_filldir, align 4
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %9, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @TGID_OFFSET, align 8
  %115 = add nsw i64 %113, %114
  %116 = load %struct.file*, %struct.file** %4, align 8
  %117 = getelementptr inbounds %struct.file, %struct.file* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.file*, %struct.file** %4, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = load i32, i32* %11, align 4
  %121 = bitcast %struct.tgid_iter* %9 to { i64, %struct.task_struct* }*
  %122 = getelementptr inbounds { i64, %struct.task_struct* }, { i64, %struct.task_struct* }* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds { i64, %struct.task_struct* }, { i64, %struct.task_struct* }* %121, i32 0, i32 1
  %125 = load %struct.task_struct*, %struct.task_struct** %124, align 8
  %126 = call i64 @proc_pid_fill_cache(%struct.file* %118, i8* %119, i32 %120, i64 %123, %struct.task_struct* %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %111
  %129 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %9, i32 0, i32 1
  %130 = load %struct.task_struct*, %struct.task_struct** %129, align 8
  %131 = call i32 @put_task_struct(%struct.task_struct* %130)
  br label %157

132:                                              ; preds = %111
  br label %133

133:                                              ; preds = %132
  %134 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %9, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = load %struct.pid_namespace*, %struct.pid_namespace** %10, align 8
  %138 = bitcast %struct.tgid_iter* %9 to { i64, %struct.task_struct* }*
  %139 = getelementptr inbounds { i64, %struct.task_struct* }, { i64, %struct.task_struct* }* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds { i64, %struct.task_struct* }, { i64, %struct.task_struct* }* %138, i32 0, i32 1
  %142 = load %struct.task_struct*, %struct.task_struct** %141, align 8
  %143 = call { i64, %struct.task_struct* } @next_tgid(%struct.pid_namespace* %137, i64 %140, %struct.task_struct* %142)
  %144 = bitcast %struct.tgid_iter* %14 to { i64, %struct.task_struct* }*
  %145 = getelementptr inbounds { i64, %struct.task_struct* }, { i64, %struct.task_struct* }* %144, i32 0, i32 0
  %146 = extractvalue { i64, %struct.task_struct* } %143, 0
  store i64 %146, i64* %145, align 8
  %147 = getelementptr inbounds { i64, %struct.task_struct* }, { i64, %struct.task_struct* }* %144, i32 0, i32 1
  %148 = extractvalue { i64, %struct.task_struct* } %143, 1
  store %struct.task_struct* %148, %struct.task_struct** %147, align 8
  %149 = bitcast %struct.tgid_iter* %9 to i8*
  %150 = bitcast %struct.tgid_iter* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %149, i8* align 8 %150, i64 16, i1 false)
  br label %97

151:                                              ; preds = %97
  %152 = load i64, i64* @PID_MAX_LIMIT, align 8
  %153 = load i64, i64* @TGID_OFFSET, align 8
  %154 = add nsw i64 %152, %153
  %155 = load %struct.file*, %struct.file** %4, align 8
  %156 = getelementptr inbounds %struct.file, %struct.file* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %151, %128, %59
  %158 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %159 = call i32 @put_task_struct(%struct.task_struct* %158)
  br label %160

160:                                              ; preds = %157, %40, %22
  ret i32 0
}

declare dso_local %struct.task_struct* @get_proc_task(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.pid_entry*) #1

declare dso_local i64 @proc_base_fill_cache(%struct.file*, i8*, i32, %struct.task_struct*, %struct.pid_entry*) #1

declare dso_local { i64, %struct.task_struct* } @next_tgid(%struct.pid_namespace*, i64, %struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @has_pid_permissions(%struct.pid_namespace*, %struct.task_struct*, i32) #1

declare dso_local i64 @proc_pid_fill_cache(%struct.file*, i8*, i32, i64, %struct.task_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
