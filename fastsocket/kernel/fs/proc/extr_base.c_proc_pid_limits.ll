; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pid_limits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pid_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }
%struct.task_struct = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rlimit = type { i32, i32 }

@RLIM_NLIMITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%-25s %-20s %-20s %-10s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Limit\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Soft Limit\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Hard Limit\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Units\00", align 1
@RLIM_INFINITY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"%-25s %-20s \00", align 1
@lnames = common dso_local global %struct.TYPE_4__* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"unlimited\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%-25s %-20lu \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%-20s \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%-20lu \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%-10s\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i8*)* @proc_pid_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_pid_limits(%struct.task_struct* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i32, i32* @RLIM_NLIMITS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca %struct.rlimit, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %19 = call i32 @lock_task_sighand(%struct.task_struct* %18, i64* %8)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %166

22:                                               ; preds = %2
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RLIM_NLIMITS, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 8, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memcpy(%struct.rlimit* %17, i32 %27, i32 %31)
  %33 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %34 = call i32 @unlock_task_sighand(%struct.task_struct* %33, i64* %8)
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = call i64 (i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %161, %22
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @RLIM_NLIMITS, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %164

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %17, i64 %50
  %52 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RLIM_INFINITY, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %48
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lnames, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 (i8*, i8*, ...) @sprintf(i8* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %7, align 4
  br label %93

72:                                               ; preds = %48
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lnames, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %17, i64 %84
  %86 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %82, i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %72, %56
  %94 = load i32, i32* %6, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %17, i64 %95
  %97 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @RLIM_INFINITY, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %93
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = call i64 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %7, align 4
  br label %126

111:                                              ; preds = %93
  %112 = load i8*, i8** %9, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i32, i32* %6, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %17, i64 %117
  %119 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i64 (i8*, i8*, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %111, %101
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lnames, align 8
  %128 = load i32, i32* %6, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %150

134:                                              ; preds = %126
  %135 = load i8*, i8** %9, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lnames, align 8
  %140 = load i32, i32* %6, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 (i8*, i8*, ...) @sprintf(i8* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %144)
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %7, align 4
  br label %160

150:                                              ; preds = %126
  %151 = load i8*, i8** %9, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = call i64 (i8*, i8*, ...) @sprintf(i8* %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %155
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %150, %134
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %6, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %44

164:                                              ; preds = %44
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %166

166:                                              ; preds = %164, %21
  %167 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lock_task_sighand(%struct.task_struct*, i64*) #2

declare dso_local i32 @memcpy(%struct.rlimit*, i32, i32) #2

declare dso_local i32 @unlock_task_sighand(%struct.task_struct*, i64*) #2

declare dso_local i64 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
