; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_file_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_file_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__*, %struct.ocfs2_file_private* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ocfs2_file_private = type { %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_mask_waiter = type { i32 }

@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"File lock \22%s\22 has busy or locked state: flags: 0x%lx, level: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_LOCK_ATTACHED = common dso_local global i32 0, align 4
@OCFS2_AST_CONVERT = common dso_local global i32 0, align 4
@DLM_LKF_CONVERT = common dso_local global i32 0, align 4
@OCFS2_LOCK_ID_MAX_LEN = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ocfs2_dlm_lock\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Lock: \22%s\22 ex: %d, trylock: %d, returns: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_file_lock(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ocfs2_file_private*, align 8
  %13 = alloca %struct.ocfs2_lock_res*, align 8
  %14 = alloca %struct.ocfs2_super*, align 8
  %15 = alloca %struct.ocfs2_mask_waiter, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @DLM_LOCK_EX, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @DLM_LOCK_PR, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %10, align 4
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 1
  %33 = load %struct.ocfs2_file_private*, %struct.ocfs2_file_private** %32, align 8
  store %struct.ocfs2_file_private* %33, %struct.ocfs2_file_private** %12, align 8
  %34 = load %struct.ocfs2_file_private*, %struct.ocfs2_file_private** %12, align 8
  %35 = getelementptr inbounds %struct.ocfs2_file_private, %struct.ocfs2_file_private* %34, i32 0, i32 0
  store %struct.ocfs2_lock_res* %35, %struct.ocfs2_lock_res** %13, align 8
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.ocfs2_super* @OCFS2_SB(i32 %42)
  store %struct.ocfs2_super* %43, %struct.ocfs2_super** %14, align 8
  %44 = call i32 @ocfs2_init_mask_waiter(%struct.ocfs2_mask_waiter* %15)
  %45 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %46 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %29
  %52 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %53 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DLM_LOCK_NL, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %51, %29
  %58 = load i32, i32* @ML_ERROR, align 4
  %59 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %60 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %63 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %66 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 %58, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64, i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %205

71:                                               ; preds = %51
  %72 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %73 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %72, i32 0, i32 5
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %77 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @OCFS2_LOCK_ATTACHED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %111, label %82

82:                                               ; preds = %71
  %83 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %84 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %85 = call i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res* %83, %struct.ocfs2_mask_waiter* %15, i32 %84, i32 0)
  %86 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %87 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %86, i32 0, i32 5
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %91 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %92 = load i32, i32* @DLM_LOCK_NL, align 4
  %93 = call i32 @ocfs2_lock_create(%struct.ocfs2_super* %90, %struct.ocfs2_lock_res* %91, i32 %92, i32 0)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %82
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @mlog_errno(i32 %97)
  br label %196

99:                                               ; preds = %82
  %100 = call i32 @ocfs2_wait_for_mask(%struct.ocfs2_mask_waiter* %15)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @mlog_errno(i32 %104)
  br label %196

106:                                              ; preds = %99
  %107 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %108 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %107, i32 0, i32 5
  %109 = load i64, i64* %11, align 8
  %110 = call i32 @spin_lock_irqsave(i32* %108, i64 %109)
  br label %111

111:                                              ; preds = %106, %71
  %112 = load i32, i32* @OCFS2_AST_CONVERT, align 4
  %113 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %114 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %120 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %122 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %123 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %121, i32 %122)
  %124 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %125 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %126 = call i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res* %124, %struct.ocfs2_mask_waiter* %15, i32 %125, i32 0)
  %127 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %128 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %127, i32 0, i32 5
  %129 = load i64, i64* %11, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  %131 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %132 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %136 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %135, i32 0, i32 4
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %139 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* @OCFS2_LOCK_ID_MAX_LEN, align 8
  %142 = sub nsw i64 %141, 1
  %143 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %144 = call i32 @ocfs2_dlm_lock(i32 %133, i32 %134, i32* %136, i32 %137, i32 %140, i64 %142, %struct.ocfs2_lock_res* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %111
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @EAGAIN, align 4
  %153 = sub nsw i32 0, %152
  %154 = icmp ne i32 %151, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %150, %147
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %158 = call i32 @ocfs2_log_dlm_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %156, %struct.ocfs2_lock_res* %157)
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %155, %150
  %162 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %163 = call i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res* %162, i32 1)
  %164 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %165 = call i32 @lockres_remove_mask_waiter(%struct.ocfs2_lock_res* %164, %struct.ocfs2_mask_waiter* %15)
  br label %196

166:                                              ; preds = %111
  %167 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %168 = call i32 @ocfs2_wait_for_mask_interruptible(%struct.ocfs2_mask_waiter* %15, %struct.ocfs2_lock_res* %167)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @ERESTARTSYS, align 4
  %171 = sub nsw i32 0, %170
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @ocfs2_flock_handle_signal(%struct.ocfs2_lock_res* %174, i32 %175)
  store i32 %176, i32* %8, align 4
  br label %195

177:                                              ; preds = %166
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %194, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %183 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp sgt i32 %181, %184
  br i1 %185, label %186, label %194

186:                                              ; preds = %180
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = call i32 @BUG_ON(i32 %190)
  %192 = load i32, i32* @EAGAIN, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %8, align 4
  br label %194

194:                                              ; preds = %186, %180, %177
  br label %195

195:                                              ; preds = %194, %173
  br label %196

196:                                              ; preds = %195, %161, %103, %96
  %197 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %198 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %8, align 4
  %203 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %199, i32 %200, i32 %201, i32 %202)
  %204 = load i32, i32* %8, align 4
  store i32 %204, i32* %4, align 4
  br label %205

205:                                              ; preds = %196, %57
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_init_mask_waiter(%struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res*, %struct.ocfs2_mask_waiter*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ocfs2_lock_create(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_wait_for_mask(%struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_dlm_lock(i32, i32, i32*, i32, i32, i64, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_log_dlm_error(i8*, i32, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @lockres_remove_mask_waiter(%struct.ocfs2_lock_res*, %struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @ocfs2_wait_for_mask_interruptible(%struct.ocfs2_mask_waiter*, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_flock_handle_signal(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
