; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cred.c_commit_creds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cred.c_commit_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.cred*, %struct.cred*, i64, i64 }
%struct.cred = type { i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"commit_creds(%p{%d,%d})\00", align 1
@suid_dumpable = common dso_local global i32 0, align 4
@PROC_EVENT_UID = common dso_local global i32 0, align 4
@PROC_EVENT_GID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @commit_creds(%struct.cred* %0) #0 {
  %2 = alloca %struct.cred*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.cred*, align 8
  store %struct.cred* %0, %struct.cred** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %5, %struct.task_struct** %3, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 1
  %8 = load %struct.cred*, %struct.cred** %7, align 8
  store %struct.cred* %8, %struct.cred** %4, align 8
  %9 = load %struct.cred*, %struct.cred** %2, align 8
  %10 = load %struct.cred*, %struct.cred** %2, align 8
  %11 = getelementptr inbounds %struct.cred, %struct.cred* %10, i32 0, i32 10
  %12 = call i32 @atomic_read(i32* %11)
  %13 = load %struct.cred*, %struct.cred** %2, align 8
  %14 = call i32 @read_cred_subscribers(%struct.cred* %13)
  %15 = call i32 @kdebug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.cred* %9, i32 %12, i32 %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load %struct.cred*, %struct.cred** %17, align 8
  %19 = load %struct.cred*, %struct.cred** %4, align 8
  %20 = icmp ne %struct.cred* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.cred*, %struct.cred** %2, align 8
  %24 = getelementptr inbounds %struct.cred, %struct.cred* %23, i32 0, i32 10
  %25 = call i32 @atomic_read(i32* %24)
  %26 = icmp slt i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.cred*, %struct.cred** %2, align 8
  %30 = load %struct.cred*, %struct.cred** %4, align 8
  %31 = call i32 @security_commit_creds(%struct.cred* %29, %struct.cred* %30)
  %32 = load %struct.cred*, %struct.cred** %2, align 8
  %33 = call i32 @get_cred(%struct.cred* %32)
  %34 = load %struct.cred*, %struct.cred** %4, align 8
  %35 = getelementptr inbounds %struct.cred, %struct.cred* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.cred*, %struct.cred** %2, align 8
  %38 = getelementptr inbounds %struct.cred, %struct.cred* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %74, label %41

41:                                               ; preds = %1
  %42 = load %struct.cred*, %struct.cred** %4, align 8
  %43 = getelementptr inbounds %struct.cred, %struct.cred* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.cred*, %struct.cred** %2, align 8
  %46 = getelementptr inbounds %struct.cred, %struct.cred* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %74, label %49

49:                                               ; preds = %41
  %50 = load %struct.cred*, %struct.cred** %4, align 8
  %51 = getelementptr inbounds %struct.cred, %struct.cred* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.cred*, %struct.cred** %2, align 8
  %54 = getelementptr inbounds %struct.cred, %struct.cred* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %74, label %57

57:                                               ; preds = %49
  %58 = load %struct.cred*, %struct.cred** %4, align 8
  %59 = getelementptr inbounds %struct.cred, %struct.cred* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.cred*, %struct.cred** %2, align 8
  %62 = getelementptr inbounds %struct.cred, %struct.cred* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %74, label %65

65:                                               ; preds = %57
  %66 = load %struct.cred*, %struct.cred** %2, align 8
  %67 = getelementptr inbounds %struct.cred, %struct.cred* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.cred*, %struct.cred** %4, align 8
  %70 = getelementptr inbounds %struct.cred, %struct.cred* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @cap_issubset(i32 %68, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %65, %57, %49, %41, %1
  %75 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %76 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %81 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @suid_dumpable, align 4
  %84 = call i32 @set_dumpable(i64 %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %87 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = call i32 (...) @smp_wmb()
  br label %89

89:                                               ; preds = %85, %65
  %90 = load %struct.cred*, %struct.cred** %2, align 8
  %91 = getelementptr inbounds %struct.cred, %struct.cred* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.cred*, %struct.cred** %4, align 8
  %94 = getelementptr inbounds %struct.cred, %struct.cred* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %99 = call i32 @key_fsuid_changed(%struct.task_struct* %98)
  br label %100

100:                                              ; preds = %97, %89
  %101 = load %struct.cred*, %struct.cred** %2, align 8
  %102 = getelementptr inbounds %struct.cred, %struct.cred* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.cred*, %struct.cred** %4, align 8
  %105 = getelementptr inbounds %struct.cred, %struct.cred* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %110 = call i32 @key_fsgid_changed(%struct.task_struct* %109)
  br label %111

111:                                              ; preds = %108, %100
  %112 = load %struct.cred*, %struct.cred** %2, align 8
  %113 = call i32 @alter_cred_subscribers(%struct.cred* %112, i32 2)
  %114 = load %struct.cred*, %struct.cred** %2, align 8
  %115 = getelementptr inbounds %struct.cred, %struct.cred* %114, i32 0, i32 8
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load %struct.cred*, %struct.cred** %4, align 8
  %118 = getelementptr inbounds %struct.cred, %struct.cred* %117, i32 0, i32 8
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = icmp ne %struct.TYPE_2__* %116, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %111
  %122 = load %struct.cred*, %struct.cred** %2, align 8
  %123 = getelementptr inbounds %struct.cred, %struct.cred* %122, i32 0, i32 8
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = call i32 @atomic_inc(i32* %125)
  br label %127

127:                                              ; preds = %121, %111
  %128 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %129 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %128, i32 0, i32 1
  %130 = load %struct.cred*, %struct.cred** %129, align 8
  %131 = load %struct.cred*, %struct.cred** %2, align 8
  %132 = call i32 @rcu_assign_pointer(%struct.cred* %130, %struct.cred* %131)
  %133 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %134 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %133, i32 0, i32 0
  %135 = load %struct.cred*, %struct.cred** %134, align 8
  %136 = load %struct.cred*, %struct.cred** %2, align 8
  %137 = call i32 @rcu_assign_pointer(%struct.cred* %135, %struct.cred* %136)
  %138 = load %struct.cred*, %struct.cred** %2, align 8
  %139 = getelementptr inbounds %struct.cred, %struct.cred* %138, i32 0, i32 8
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load %struct.cred*, %struct.cred** %4, align 8
  %142 = getelementptr inbounds %struct.cred, %struct.cred* %141, i32 0, i32 8
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = icmp ne %struct.TYPE_2__* %140, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %127
  %146 = load %struct.cred*, %struct.cred** %4, align 8
  %147 = getelementptr inbounds %struct.cred, %struct.cred* %146, i32 0, i32 8
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = call i32 @atomic_dec(i32* %149)
  br label %151

151:                                              ; preds = %145, %127
  %152 = load %struct.cred*, %struct.cred** %4, align 8
  %153 = call i32 @alter_cred_subscribers(%struct.cred* %152, i32 -2)
  %154 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %155 = call i32 @sched_switch_user(%struct.task_struct* %154)
  %156 = load %struct.cred*, %struct.cred** %2, align 8
  %157 = getelementptr inbounds %struct.cred, %struct.cred* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.cred*, %struct.cred** %4, align 8
  %160 = getelementptr inbounds %struct.cred, %struct.cred* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %158, %161
  br i1 %162, label %187, label %163

163:                                              ; preds = %151
  %164 = load %struct.cred*, %struct.cred** %2, align 8
  %165 = getelementptr inbounds %struct.cred, %struct.cred* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.cred*, %struct.cred** %4, align 8
  %168 = getelementptr inbounds %struct.cred, %struct.cred* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %166, %169
  br i1 %170, label %187, label %171

171:                                              ; preds = %163
  %172 = load %struct.cred*, %struct.cred** %2, align 8
  %173 = getelementptr inbounds %struct.cred, %struct.cred* %172, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.cred*, %struct.cred** %4, align 8
  %176 = getelementptr inbounds %struct.cred, %struct.cred* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %174, %177
  br i1 %178, label %187, label %179

179:                                              ; preds = %171
  %180 = load %struct.cred*, %struct.cred** %2, align 8
  %181 = getelementptr inbounds %struct.cred, %struct.cred* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.cred*, %struct.cred** %4, align 8
  %184 = getelementptr inbounds %struct.cred, %struct.cred* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %182, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %179, %171, %163, %151
  %188 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %189 = load i32, i32* @PROC_EVENT_UID, align 4
  %190 = call i32 @proc_id_connector(%struct.task_struct* %188, i32 %189)
  br label %191

191:                                              ; preds = %187, %179
  %192 = load %struct.cred*, %struct.cred** %2, align 8
  %193 = getelementptr inbounds %struct.cred, %struct.cred* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.cred*, %struct.cred** %4, align 8
  %196 = getelementptr inbounds %struct.cred, %struct.cred* %195, i32 0, i32 6
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %194, %197
  br i1 %198, label %223, label %199

199:                                              ; preds = %191
  %200 = load %struct.cred*, %struct.cred** %2, align 8
  %201 = getelementptr inbounds %struct.cred, %struct.cred* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.cred*, %struct.cred** %4, align 8
  %204 = getelementptr inbounds %struct.cred, %struct.cred* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %202, %205
  br i1 %206, label %223, label %207

207:                                              ; preds = %199
  %208 = load %struct.cred*, %struct.cred** %2, align 8
  %209 = getelementptr inbounds %struct.cred, %struct.cred* %208, i32 0, i32 7
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.cred*, %struct.cred** %4, align 8
  %212 = getelementptr inbounds %struct.cred, %struct.cred* %211, i32 0, i32 7
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %210, %213
  br i1 %214, label %223, label %215

215:                                              ; preds = %207
  %216 = load %struct.cred*, %struct.cred** %2, align 8
  %217 = getelementptr inbounds %struct.cred, %struct.cred* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.cred*, %struct.cred** %4, align 8
  %220 = getelementptr inbounds %struct.cred, %struct.cred* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %218, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %215, %207, %199, %191
  %224 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %225 = load i32, i32* @PROC_EVENT_GID, align 4
  %226 = call i32 @proc_id_connector(%struct.task_struct* %224, i32 %225)
  br label %227

227:                                              ; preds = %223, %215
  %228 = load %struct.cred*, %struct.cred** %4, align 8
  %229 = call i32 @put_cred(%struct.cred* %228)
  %230 = load %struct.cred*, %struct.cred** %4, align 8
  %231 = call i32 @put_cred(%struct.cred* %230)
  ret i32 0
}

declare dso_local i32 @kdebug(i8*, %struct.cred*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @read_cred_subscribers(%struct.cred*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @security_commit_creds(%struct.cred*, %struct.cred*) #1

declare dso_local i32 @get_cred(%struct.cred*) #1

declare dso_local i32 @cap_issubset(i32, i32) #1

declare dso_local i32 @set_dumpable(i64, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @key_fsuid_changed(%struct.task_struct*) #1

declare dso_local i32 @key_fsgid_changed(%struct.task_struct*) #1

declare dso_local i32 @alter_cred_subscribers(%struct.cred*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.cred*, %struct.cred*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @sched_switch_user(%struct.task_struct*) #1

declare dso_local i32 @proc_id_connector(%struct.task_struct*, i32) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
