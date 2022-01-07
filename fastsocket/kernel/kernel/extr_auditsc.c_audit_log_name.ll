; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_log_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_log_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_context = type { i32 }
%struct.audit_names = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.audit_buffer = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"item=%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" name=\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" name=(null)\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c" inode=%lu dev=%02x:%02x mode=%#o ouid=%u ogid=%u rdev=%02x:%02x\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" osid=%u\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" obj=%s\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" nametype=\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"PARENT\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"CREATE\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_context*, %struct.audit_names*, i32, i32*)* @audit_log_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_log_name(%struct.audit_context* %0, %struct.audit_names* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.audit_context*, align 8
  %6 = alloca %struct.audit_names*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.audit_buffer*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.audit_context* %0, %struct.audit_context** %5, align 8
  store %struct.audit_names* %1, %struct.audit_names** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load i32, i32* @AUDIT_PATH, align 4
  %15 = call %struct.audit_buffer* @audit_log_start(%struct.audit_context* %12, i32 %13, i32 %14)
  store %struct.audit_buffer* %15, %struct.audit_buffer** %9, align 8
  %16 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %17 = icmp ne %struct.audit_buffer* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %152

19:                                               ; preds = %4
  %20 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %24 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %23, i32 0, i32 9
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %60

27:                                               ; preds = %19
  %28 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %29 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %46 [
    i32 132, label %31
    i32 0, label %41
  ]

31:                                               ; preds = %27
  %32 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %33 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %35 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %36 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %35, i32 0, i32 9
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %34, i32 %39)
  br label %59

41:                                               ; preds = %27
  %42 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %43 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %44 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %43, i32 0, i32 0
  %45 = call i32 @audit_log_d_path(%struct.audit_buffer* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %44)
  br label %59

46:                                               ; preds = %27
  %47 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %48 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %50 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %51 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %50, i32 0, i32 9
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %56 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @audit_log_n_untrustedstring(%struct.audit_buffer* %49, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %46, %41, %31
  br label %63

60:                                               ; preds = %19
  %61 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %62 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %59
  %64 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %65 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, -1
  br i1 %67, label %68, label %99

68:                                               ; preds = %63
  %69 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %70 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %71 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %74 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @MAJOR(i32 %75)
  %77 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %78 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @MINOR(i32 %79)
  %81 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %82 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %85 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %88 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %91 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @MAJOR(i32 %92)
  %94 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %95 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @MINOR(i32 %96)
  %98 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %69, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i64 %72, i32 %76, i32 %80, i32 %83, i32 %86, i32 %89, i32 %93, i32 %97)
  br label %99

99:                                               ; preds = %68, %63
  %100 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %101 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %99
  store i8* null, i8** %10, align 8
  %105 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %106 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @security_secid_to_secctx(i32 %107, i8** %10, i32* %11)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %112 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %113 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  %116 = load i32*, i32** %8, align 8
  store i32 2, i32* %116, align 4
  br label %124

117:                                              ; preds = %104
  %118 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %119)
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @security_release_secctx(i8* %121, i32 %122)
  br label %124

124:                                              ; preds = %117, %110
  br label %125

125:                                              ; preds = %124, %99
  %126 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %127 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %128 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %129 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  switch i32 %130, label %143 [
    i32 129, label %131
    i32 128, label %134
    i32 130, label %137
    i32 131, label %140
  ]

131:                                              ; preds = %125
  %132 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %133 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %146

134:                                              ; preds = %125
  %135 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %136 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %146

137:                                              ; preds = %125
  %138 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %139 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %146

140:                                              ; preds = %125
  %141 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %142 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %146

143:                                              ; preds = %125
  %144 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %145 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %140, %137, %134, %131
  %147 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %148 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %149 = call i32 @audit_log_fcaps(%struct.audit_buffer* %147, %struct.audit_names* %148)
  %150 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %151 = call i32 @audit_log_end(%struct.audit_buffer* %150)
  br label %152

152:                                              ; preds = %146, %18
  ret void
}

declare dso_local %struct.audit_buffer* @audit_log_start(%struct.audit_context*, i32, i32) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @audit_log_untrustedstring(%struct.audit_buffer*, i32) #1

declare dso_local i32 @audit_log_d_path(%struct.audit_buffer*, i8*, i32*) #1

declare dso_local i32 @audit_log_n_untrustedstring(%struct.audit_buffer*, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i64 @security_secid_to_secctx(i32, i8**, i32*) #1

declare dso_local i32 @security_release_secctx(i8*, i32) #1

declare dso_local i32 @audit_log_fcaps(%struct.audit_buffer*, %struct.audit_names*) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
