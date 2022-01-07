; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_nsproxy.c_create_new_namespaces.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_nsproxy.c_create_new_namespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsproxy = type { i64, i64, i64, i64, i64 }
%struct.task_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.fs_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@nsproxy_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nsproxy* (i64, %struct.task_struct*, %struct.fs_struct*)* @create_new_namespaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nsproxy* @create_new_namespaces(i64 %0, %struct.task_struct* %1, %struct.fs_struct* %2) #0 {
  %4 = alloca %struct.nsproxy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.fs_struct*, align 8
  %8 = alloca %struct.nsproxy*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.fs_struct* %2, %struct.fs_struct** %7, align 8
  %10 = call %struct.nsproxy* (...) @create_nsproxy()
  store %struct.nsproxy* %10, %struct.nsproxy** %8, align 8
  %11 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %12 = icmp ne %struct.nsproxy* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.nsproxy* @ERR_PTR(i32 %15)
  store %struct.nsproxy* %16, %struct.nsproxy** %4, align 8
  br label %170

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fs_struct*, %struct.fs_struct** %7, align 8
  %25 = call i64 @copy_mnt_ns(i64 %18, i32 %23, %struct.fs_struct* %24)
  %26 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %27 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %29 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @IS_ERR(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %17
  %34 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %35 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @PTR_ERR(i64 %36)
  store i32 %37, i32* %9, align 4
  br label %164

38:                                               ; preds = %17
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @copy_utsname(i64 %39, i32 %44)
  %46 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %47 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %49 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @IS_ERR(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %38
  %54 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %55 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @PTR_ERR(i64 %56)
  store i32 %57, i32* %9, align 4
  br label %153

58:                                               ; preds = %38
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %61 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @copy_ipcs(i64 %59, i32 %64)
  %66 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %67 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %69 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @IS_ERR(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %58
  %74 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %75 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @PTR_ERR(i64 %76)
  store i32 %77, i32* %9, align 4
  br label %142

78:                                               ; preds = %58
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %81 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @copy_pid_ns(i64 %79, i32 %84)
  %86 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %87 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  %88 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %89 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @IS_ERR(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %78
  %94 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %95 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @PTR_ERR(i64 %96)
  store i32 %97, i32* %9, align 4
  br label %131

98:                                               ; preds = %78
  %99 = load i64, i64* %5, align 8
  %100 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %101 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @copy_net_ns(i64 %99, i32 %104)
  %106 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %107 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %106, i32 0, i32 4
  store i64 %105, i64* %107, align 8
  %108 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %109 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @IS_ERR(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %98
  %114 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %115 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @PTR_ERR(i64 %116)
  store i32 %117, i32* %9, align 4
  br label %120

118:                                              ; preds = %98
  %119 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  store %struct.nsproxy* %119, %struct.nsproxy** %4, align 8
  br label %170

120:                                              ; preds = %113
  %121 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %122 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %127 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @put_pid_ns(i64 %128)
  br label %130

130:                                              ; preds = %125, %120
  br label %131

131:                                              ; preds = %130, %93
  %132 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %133 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %138 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @put_ipc_ns(i64 %139)
  br label %141

141:                                              ; preds = %136, %131
  br label %142

142:                                              ; preds = %141, %73
  %143 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %144 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %149 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @put_uts_ns(i64 %150)
  br label %152

152:                                              ; preds = %147, %142
  br label %153

153:                                              ; preds = %152, %53
  %154 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %155 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %160 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @put_mnt_ns(i64 %161)
  br label %163

163:                                              ; preds = %158, %153
  br label %164

164:                                              ; preds = %163, %33
  %165 = load i32, i32* @nsproxy_cachep, align 4
  %166 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %167 = call i32 @kmem_cache_free(i32 %165, %struct.nsproxy* %166)
  %168 = load i32, i32* %9, align 4
  %169 = call %struct.nsproxy* @ERR_PTR(i32 %168)
  store %struct.nsproxy* %169, %struct.nsproxy** %4, align 8
  br label %170

170:                                              ; preds = %164, %118, %13
  %171 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  ret %struct.nsproxy* %171
}

declare dso_local %struct.nsproxy* @create_nsproxy(...) #1

declare dso_local %struct.nsproxy* @ERR_PTR(i32) #1

declare dso_local i64 @copy_mnt_ns(i64, i32, %struct.fs_struct*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @copy_utsname(i64, i32) #1

declare dso_local i64 @copy_ipcs(i64, i32) #1

declare dso_local i64 @copy_pid_ns(i64, i32) #1

declare dso_local i64 @copy_net_ns(i64, i32) #1

declare dso_local i32 @put_pid_ns(i64) #1

declare dso_local i32 @put_ipc_ns(i64) #1

declare dso_local i32 @put_uts_ns(i64) #1

declare dso_local i32 @put_mnt_ns(i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nsproxy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
