; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_write_event_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_write_event_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32, i32 }
%struct.cftype = type { i32 }
%struct.cgroup_event = type { %struct.file*, i32, %struct.file*, i32, i32, i32, %struct.cgroup* }
%struct.file = type { i32 (%struct.cgroup.0*, %struct.file*, %struct.file*, i8*)*, i32 (%struct.cgroup.1*, %struct.file*, %struct.file*)*, %struct.TYPE_2__* }
%struct.cgroup.0 = type opaque
%struct.cgroup.1 = type opaque
%struct.TYPE_2__ = type { i32 (%struct.file*, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cgroup_event_ptable_queue_proc = common dso_local global i32 0, align 4
@cgroup_event_wake = common dso_local global i32 0, align 4
@cgroup_event_remove = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*, i8*)* @cgroup_write_event_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_write_event_control(%struct.cgroup* %0, %struct.cftype* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.cftype*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cgroup_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store %struct.cftype* %1, %struct.cftype** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.cgroup_event* null, %struct.cgroup_event** %8, align 8
  store %struct.file* null, %struct.file** %11, align 8
  store %struct.file* null, %struct.file** %12, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @simple_strtoul(i8* %15, i8** %13, i32 10)
  store i32 %16, i32* %9, align 4
  %17 = load i8*, i8** %13, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 32
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %239

24:                                               ; preds = %3
  %25 = load i8*, i8** %13, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @simple_strtoul(i8* %27, i8** %13, i32 10)
  store i32 %28, i32* %10, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 32
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load i8*, i8** %13, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %239

41:                                               ; preds = %33, %24
  %42 = load i8*, i8** %13, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %7, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.cgroup_event* @kzalloc(i32 48, i32 %44)
  store %struct.cgroup_event* %45, %struct.cgroup_event** %8, align 8
  %46 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %47 = icmp ne %struct.cgroup_event* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %239

51:                                               ; preds = %41
  %52 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %53 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %54 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %53, i32 0, i32 6
  store %struct.cgroup* %52, %struct.cgroup** %54, align 8
  %55 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %56 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %55, i32 0, i32 1
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %59 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %58, i32 0, i32 3
  %60 = load i32, i32* @cgroup_event_ptable_queue_proc, align 4
  %61 = call i32 @init_poll_funcptr(i32* %59, i32 %60)
  %62 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %63 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %62, i32 0, i32 5
  %64 = load i32, i32* @cgroup_event_wake, align 4
  %65 = call i32 @init_waitqueue_func_entry(i32* %63, i32 %64)
  %66 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %67 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %66, i32 0, i32 4
  %68 = load i32, i32* @cgroup_event_remove, align 4
  %69 = call i32 @INIT_WORK(i32* %67, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = call %struct.file* @eventfd_fget(i32 %70)
  store %struct.file* %71, %struct.file** %11, align 8
  %72 = load %struct.file*, %struct.file** %11, align 8
  %73 = call i64 @IS_ERR(%struct.file* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %51
  %76 = load %struct.file*, %struct.file** %11, align 8
  %77 = call i32 @PTR_ERR(%struct.file* %76)
  store i32 %77, i32* %14, align 4
  br label %203

78:                                               ; preds = %51
  %79 = load %struct.file*, %struct.file** %11, align 8
  %80 = call %struct.file* @eventfd_ctx_fileget(%struct.file* %79)
  %81 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %82 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %81, i32 0, i32 0
  store %struct.file* %80, %struct.file** %82, align 8
  %83 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %84 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %83, i32 0, i32 0
  %85 = load %struct.file*, %struct.file** %84, align 8
  %86 = call i64 @IS_ERR(%struct.file* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %78
  %89 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %90 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %89, i32 0, i32 0
  %91 = load %struct.file*, %struct.file** %90, align 8
  %92 = call i32 @PTR_ERR(%struct.file* %91)
  store i32 %92, i32* %14, align 4
  br label %203

93:                                               ; preds = %78
  %94 = load i32, i32* %10, align 4
  %95 = call %struct.file* @fget(i32 %94)
  store %struct.file* %95, %struct.file** %12, align 8
  %96 = load %struct.file*, %struct.file** %12, align 8
  %97 = icmp ne %struct.file* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @EBADF, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %14, align 4
  br label %203

101:                                              ; preds = %93
  %102 = load %struct.file*, %struct.file** %12, align 8
  %103 = load i32, i32* @MAY_READ, align 4
  %104 = call i32 @file_permission(%struct.file* %102, i32 %103)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %203

108:                                              ; preds = %101
  %109 = load %struct.file*, %struct.file** %12, align 8
  %110 = call %struct.file* @__file_cft(%struct.file* %109)
  %111 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %112 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %111, i32 0, i32 2
  store %struct.file* %110, %struct.file** %112, align 8
  %113 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %114 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %113, i32 0, i32 2
  %115 = load %struct.file*, %struct.file** %114, align 8
  %116 = call i64 @IS_ERR(%struct.file* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %108
  %119 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %120 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %119, i32 0, i32 2
  %121 = load %struct.file*, %struct.file** %120, align 8
  %122 = call i32 @PTR_ERR(%struct.file* %121)
  store i32 %122, i32* %14, align 4
  br label %203

123:                                              ; preds = %108
  %124 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %125 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %124, i32 0, i32 2
  %126 = load %struct.file*, %struct.file** %125, align 8
  %127 = getelementptr inbounds %struct.file, %struct.file* %126, i32 0, i32 0
  %128 = load i32 (%struct.cgroup.0*, %struct.file*, %struct.file*, i8*)*, i32 (%struct.cgroup.0*, %struct.file*, %struct.file*, i8*)** %127, align 8
  %129 = icmp ne i32 (%struct.cgroup.0*, %struct.file*, %struct.file*, i8*)* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %132 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %131, i32 0, i32 2
  %133 = load %struct.file*, %struct.file** %132, align 8
  %134 = getelementptr inbounds %struct.file, %struct.file* %133, i32 0, i32 1
  %135 = load i32 (%struct.cgroup.1*, %struct.file*, %struct.file*)*, i32 (%struct.cgroup.1*, %struct.file*, %struct.file*)** %134, align 8
  %136 = icmp ne i32 (%struct.cgroup.1*, %struct.file*, %struct.file*)* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %130, %123
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %14, align 4
  br label %203

140:                                              ; preds = %130
  %141 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %142 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %141, i32 0, i32 2
  %143 = load %struct.file*, %struct.file** %142, align 8
  %144 = getelementptr inbounds %struct.file, %struct.file* %143, i32 0, i32 0
  %145 = load i32 (%struct.cgroup.0*, %struct.file*, %struct.file*, i8*)*, i32 (%struct.cgroup.0*, %struct.file*, %struct.file*, i8*)** %144, align 8
  %146 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %147 = bitcast %struct.cgroup* %146 to %struct.cgroup.0*
  %148 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %149 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %148, i32 0, i32 2
  %150 = load %struct.file*, %struct.file** %149, align 8
  %151 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %152 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %151, i32 0, i32 0
  %153 = load %struct.file*, %struct.file** %152, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 %145(%struct.cgroup.0* %147, %struct.file* %150, %struct.file* %153, i8* %154)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %140
  br label %203

159:                                              ; preds = %140
  %160 = load %struct.file*, %struct.file** %11, align 8
  %161 = getelementptr inbounds %struct.file, %struct.file* %160, i32 0, i32 2
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32 (%struct.file*, i32*)*, i32 (%struct.file*, i32*)** %163, align 8
  %165 = load %struct.file*, %struct.file** %11, align 8
  %166 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %167 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %166, i32 0, i32 3
  %168 = call i32 %164(%struct.file* %165, i32* %167)
  %169 = load i32, i32* @POLLHUP, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %159
  %173 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %174 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %173, i32 0, i32 2
  %175 = load %struct.file*, %struct.file** %174, align 8
  %176 = getelementptr inbounds %struct.file, %struct.file* %175, i32 0, i32 1
  %177 = load i32 (%struct.cgroup.1*, %struct.file*, %struct.file*)*, i32 (%struct.cgroup.1*, %struct.file*, %struct.file*)** %176, align 8
  %178 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %179 = bitcast %struct.cgroup* %178 to %struct.cgroup.1*
  %180 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %181 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %180, i32 0, i32 2
  %182 = load %struct.file*, %struct.file** %181, align 8
  %183 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %184 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %183, i32 0, i32 0
  %185 = load %struct.file*, %struct.file** %184, align 8
  %186 = call i32 %177(%struct.cgroup.1* %179, %struct.file* %182, %struct.file* %185)
  store i32 0, i32* %14, align 4
  br label %203

187:                                              ; preds = %159
  %188 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %189 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %188, i32 0, i32 0
  %190 = call i32 @spin_lock(i32* %189)
  %191 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %192 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %191, i32 0, i32 1
  %193 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %194 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %193, i32 0, i32 1
  %195 = call i32 @list_add(i32* %192, i32* %194)
  %196 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %197 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %196, i32 0, i32 0
  %198 = call i32 @spin_unlock(i32* %197)
  %199 = load %struct.file*, %struct.file** %12, align 8
  %200 = call i32 @fput(%struct.file* %199)
  %201 = load %struct.file*, %struct.file** %11, align 8
  %202 = call i32 @fput(%struct.file* %201)
  store i32 0, i32* %4, align 4
  br label %239

203:                                              ; preds = %172, %158, %137, %118, %107, %98, %88, %75
  %204 = load %struct.file*, %struct.file** %12, align 8
  %205 = icmp ne %struct.file* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load %struct.file*, %struct.file** %12, align 8
  %208 = call i32 @fput(%struct.file* %207)
  br label %209

209:                                              ; preds = %206, %203
  %210 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %211 = icmp ne %struct.cgroup_event* %210, null
  br i1 %211, label %212, label %228

212:                                              ; preds = %209
  %213 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %214 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %213, i32 0, i32 0
  %215 = load %struct.file*, %struct.file** %214, align 8
  %216 = icmp ne %struct.file* %215, null
  br i1 %216, label %217, label %228

217:                                              ; preds = %212
  %218 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %219 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %218, i32 0, i32 0
  %220 = load %struct.file*, %struct.file** %219, align 8
  %221 = call i64 @IS_ERR(%struct.file* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %217
  %224 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %225 = getelementptr inbounds %struct.cgroup_event, %struct.cgroup_event* %224, i32 0, i32 0
  %226 = load %struct.file*, %struct.file** %225, align 8
  %227 = call i32 @eventfd_ctx_put(%struct.file* %226)
  br label %228

228:                                              ; preds = %223, %217, %212, %209
  %229 = load %struct.file*, %struct.file** %11, align 8
  %230 = call i32 @IS_ERR_OR_NULL(%struct.file* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = load %struct.file*, %struct.file** %11, align 8
  %234 = call i32 @fput(%struct.file* %233)
  br label %235

235:                                              ; preds = %232, %228
  %236 = load %struct.cgroup_event*, %struct.cgroup_event** %8, align 8
  %237 = call i32 @kfree(%struct.cgroup_event* %236)
  %238 = load i32, i32* %14, align 4
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %235, %187, %48, %38, %21
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local %struct.cgroup_event* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_poll_funcptr(i32*, i32) #1

declare dso_local i32 @init_waitqueue_func_entry(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local %struct.file* @eventfd_fget(i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local %struct.file* @eventfd_ctx_fileget(%struct.file*) #1

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @file_permission(%struct.file*, i32) #1

declare dso_local %struct.file* @__file_cft(%struct.file*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @eventfd_ctx_put(%struct.file*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.file*) #1

declare dso_local i32 @kfree(%struct.cgroup_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
