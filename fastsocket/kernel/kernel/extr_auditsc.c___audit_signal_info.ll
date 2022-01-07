; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_signal_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_signal_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, i32, i32, %struct.audit_context* }
%struct.audit_context = type { i64, i8*, i32, i32, i8*, i8*, i8* }
%struct.audit_aux_data_pids = type { i64, i64*, i32*, i32*, i8**, i8**, i8**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@audit_pid = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@audit_sig_pid = common dso_local global i32 0, align 4
@audit_sig_uid = common dso_local global i32 0, align 4
@audit_sig_sid = common dso_local global i32 0, align 4
@audit_signals = common dso_local global i32 0, align 4
@TASK_COMM_LEN = common dso_local global i32 0, align 4
@AUDIT_AUX_PIDS = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AUDIT_OBJ_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__audit_signal_info(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.audit_aux_data_pids*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.audit_context*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %11, %struct.task_struct** %7, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 4
  %14 = load %struct.audit_context*, %struct.audit_context** %13, align 8
  store %struct.audit_context* %14, %struct.audit_context** %8, align 8
  %15 = call i8* (...) @current_uid()
  store i8* %15, i8** %9, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %17 = call i8* @task_uid(%struct.task_struct* %16)
  store i8* %17, i8** %10, align 8
  %18 = load i64, i64* @audit_pid, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %68

20:                                               ; preds = %2
  %21 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @audit_pid, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %68

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SIGTERM, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SIGHUP, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SIGUSR1, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @SIGUSR2, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38, %34, %30, %26
  %43 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %44 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* @audit_sig_pid, align 4
  %46 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* @audit_sig_uid, align 4
  br label %57

54:                                               ; preds = %42
  %55 = load i8*, i8** %9, align 8
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* @audit_sig_uid, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %59 = call i32 @security_task_getsecid(%struct.task_struct* %58, i32* @audit_sig_sid)
  br label %60

60:                                               ; preds = %57, %38
  %61 = load i32, i32* @audit_signals, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = call i64 (...) @audit_dummy_context()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %60
  store i32 0, i32* %3, align 4
  br label %208

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %20, %2
  %69 = load %struct.audit_context*, %struct.audit_context** %8, align 8
  %70 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %102, label %73

73:                                               ; preds = %68
  %74 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %75 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.audit_context*, %struct.audit_context** %8, align 8
  %78 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %80 = call i8* @audit_get_loginuid(%struct.task_struct* %79)
  %81 = load %struct.audit_context*, %struct.audit_context** %8, align 8
  %82 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.audit_context*, %struct.audit_context** %8, align 8
  %85 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %87 = call i8* @audit_get_sessionid(%struct.task_struct* %86)
  %88 = load %struct.audit_context*, %struct.audit_context** %8, align 8
  %89 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %91 = load %struct.audit_context*, %struct.audit_context** %8, align 8
  %92 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %91, i32 0, i32 3
  %93 = call i32 @security_task_getsecid(%struct.task_struct* %90, i32* %92)
  %94 = load %struct.audit_context*, %struct.audit_context** %8, align 8
  %95 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %98 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @TASK_COMM_LEN, align 4
  %101 = call i32 @memcpy(i32 %96, i32 %99, i32 %100)
  store i32 0, i32* %3, align 4
  br label %208

102:                                              ; preds = %68
  %103 = load %struct.audit_context*, %struct.audit_context** %8, align 8
  %104 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = bitcast i8* %105 to %struct.audit_aux_data_pids*
  store %struct.audit_aux_data_pids* %106, %struct.audit_aux_data_pids** %6, align 8
  %107 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %108 = icmp ne %struct.audit_aux_data_pids* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %111 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AUDIT_AUX_PIDS, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %138

115:                                              ; preds = %109, %102
  %116 = load i32, i32* @GFP_ATOMIC, align 4
  %117 = call %struct.audit_aux_data_pids* @kzalloc(i32 72, i32 %116)
  store %struct.audit_aux_data_pids* %117, %struct.audit_aux_data_pids** %6, align 8
  %118 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %119 = icmp ne %struct.audit_aux_data_pids* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %208

123:                                              ; preds = %115
  %124 = load i32, i32* @AUDIT_OBJ_PID, align 4
  %125 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %126 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 8
  %128 = load %struct.audit_context*, %struct.audit_context** %8, align 8
  %129 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %132 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %131, i32 0, i32 7
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i8* %130, i8** %133, align 8
  %134 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %135 = bitcast %struct.audit_aux_data_pids* %134 to i8*
  %136 = load %struct.audit_context*, %struct.audit_context** %8, align 8
  %137 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %123, %109
  %139 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %140 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @AUDIT_AUX_PIDS, align 8
  %143 = icmp uge i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @BUG_ON(i32 %144)
  %146 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %147 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %150 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %149, i32 0, i32 1
  %151 = load i64*, i64** %150, align 8
  %152 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %153 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds i64, i64* %151, i64 %154
  store i64 %148, i64* %155, align 8
  %156 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %157 = call i8* @audit_get_loginuid(%struct.task_struct* %156)
  %158 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %159 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %158, i32 0, i32 6
  %160 = load i8**, i8*** %159, align 8
  %161 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %162 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i8*, i8** %160, i64 %163
  store i8* %157, i8** %164, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %167 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %166, i32 0, i32 5
  %168 = load i8**, i8*** %167, align 8
  %169 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %170 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i8*, i8** %168, i64 %171
  store i8* %165, i8** %172, align 8
  %173 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %174 = call i8* @audit_get_sessionid(%struct.task_struct* %173)
  %175 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %176 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %175, i32 0, i32 4
  %177 = load i8**, i8*** %176, align 8
  %178 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %179 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds i8*, i8** %177, i64 %180
  store i8* %174, i8** %181, align 8
  %182 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %183 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %184 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %187 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = call i32 @security_task_getsecid(%struct.task_struct* %182, i32* %189)
  %191 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %192 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %195 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %200 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @TASK_COMM_LEN, align 4
  %203 = call i32 @memcpy(i32 %198, i32 %201, i32 %202)
  %204 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %6, align 8
  %205 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %205, align 8
  store i32 0, i32* %3, align 4
  br label %208

208:                                              ; preds = %138, %120, %73, %66
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i8* @current_uid(...) #1

declare dso_local i8* @task_uid(%struct.task_struct*) #1

declare dso_local i32 @security_task_getsecid(%struct.task_struct*, i32*) #1

declare dso_local i64 @audit_dummy_context(...) #1

declare dso_local i8* @audit_get_loginuid(%struct.task_struct*) #1

declare dso_local i8* @audit_get_sessionid(%struct.task_struct*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.audit_aux_data_pids* @kzalloc(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
