; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_open_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_open_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.tomoyo_io_buffer* }
%struct.tomoyo_io_buffer = type { i32, i32, %struct.tomoyo_io_buffer*, i8*, i32*, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@tomoyo_write_domain_policy = common dso_local global i32* null, align 8
@tomoyo_read_domain_policy = common dso_local global i32* null, align 8
@tomoyo_write_exception_policy = common dso_local global i32* null, align 8
@tomoyo_read_exception_policy = common dso_local global i32* null, align 8
@tomoyo_read_self_domain = common dso_local global i32* null, align 8
@tomoyo_write_domain_profile = common dso_local global i32* null, align 8
@tomoyo_read_domain_profile = common dso_local global i32* null, align 8
@tomoyo_write_pid = common dso_local global i32* null, align 8
@tomoyo_read_pid = common dso_local global i32* null, align 8
@tomoyo_read_version = common dso_local global i32* null, align 8
@tomoyo_write_memory_quota = common dso_local global i32* null, align 8
@tomoyo_read_memory_counter = common dso_local global i32* null, align 8
@tomoyo_write_profile = common dso_local global i32* null, align 8
@tomoyo_read_profile = common dso_local global i32* null, align 8
@tomoyo_write_manager_policy = common dso_local global i32* null, align 8
@tomoyo_read_manager_policy = common dso_local global i32* null, align 8
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*)* @tomoyo_open_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_open_control(i32 %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.tomoyo_io_buffer*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = call i8* @tomoyo_alloc(i32 48)
  %8 = bitcast i8* %7 to %struct.tomoyo_io_buffer*
  store %struct.tomoyo_io_buffer* %8, %struct.tomoyo_io_buffer** %6, align 8
  %9 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %10 = icmp ne %struct.tomoyo_io_buffer* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %165

14:                                               ; preds = %2
  %15 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %16 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %15, i32 0, i32 6
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %80 [
    i32 136, label %19
    i32 134, label %26
    i32 129, label %33
    i32 135, label %37
    i32 131, label %44
    i32 128, label %51
    i32 132, label %57
    i32 130, label %66
    i32 133, label %73
  ]

19:                                               ; preds = %14
  %20 = load i32*, i32** @tomoyo_write_domain_policy, align 8
  %21 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %22 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %21, i32 0, i32 4
  store i32* %20, i32** %22, align 8
  %23 = load i32*, i32** @tomoyo_read_domain_policy, align 8
  %24 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %24, i32 0, i32 5
  store i32* %23, i32** %25, align 8
  br label %80

26:                                               ; preds = %14
  %27 = load i32*, i32** @tomoyo_write_exception_policy, align 8
  %28 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %28, i32 0, i32 4
  store i32* %27, i32** %29, align 8
  %30 = load i32*, i32** @tomoyo_read_exception_policy, align 8
  %31 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %31, i32 0, i32 5
  store i32* %30, i32** %32, align 8
  br label %80

33:                                               ; preds = %14
  %34 = load i32*, i32** @tomoyo_read_self_domain, align 8
  %35 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %36 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %35, i32 0, i32 5
  store i32* %34, i32** %36, align 8
  br label %80

37:                                               ; preds = %14
  %38 = load i32*, i32** @tomoyo_write_domain_profile, align 8
  %39 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %39, i32 0, i32 4
  store i32* %38, i32** %40, align 8
  %41 = load i32*, i32** @tomoyo_read_domain_profile, align 8
  %42 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %42, i32 0, i32 5
  store i32* %41, i32** %43, align 8
  br label %80

44:                                               ; preds = %14
  %45 = load i32*, i32** @tomoyo_write_pid, align 8
  %46 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %47 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %46, i32 0, i32 4
  store i32* %45, i32** %47, align 8
  %48 = load i32*, i32** @tomoyo_read_pid, align 8
  %49 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %49, i32 0, i32 5
  store i32* %48, i32** %50, align 8
  br label %80

51:                                               ; preds = %14
  %52 = load i32*, i32** @tomoyo_read_version, align 8
  %53 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %54 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %53, i32 0, i32 5
  store i32* %52, i32** %54, align 8
  %55 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %55, i32 0, i32 0
  store i32 128, i32* %56, align 8
  br label %80

57:                                               ; preds = %14
  %58 = load i32*, i32** @tomoyo_write_memory_quota, align 8
  %59 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %59, i32 0, i32 4
  store i32* %58, i32** %60, align 8
  %61 = load i32*, i32** @tomoyo_read_memory_counter, align 8
  %62 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %63 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %62, i32 0, i32 5
  store i32* %61, i32** %63, align 8
  %64 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %65 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %64, i32 0, i32 0
  store i32 512, i32* %65, align 8
  br label %80

66:                                               ; preds = %14
  %67 = load i32*, i32** @tomoyo_write_profile, align 8
  %68 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %68, i32 0, i32 4
  store i32* %67, i32** %69, align 8
  %70 = load i32*, i32** @tomoyo_read_profile, align 8
  %71 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %72 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %71, i32 0, i32 5
  store i32* %70, i32** %72, align 8
  br label %80

73:                                               ; preds = %14
  %74 = load i32*, i32** @tomoyo_write_manager_policy, align 8
  %75 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %76 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %75, i32 0, i32 4
  store i32* %74, i32** %76, align 8
  %77 = load i32*, i32** @tomoyo_read_manager_policy, align 8
  %78 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %79 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %78, i32 0, i32 5
  store i32* %77, i32** %79, align 8
  br label %80

80:                                               ; preds = %14, %73, %66, %57, %51, %44, %37, %33, %26, %19
  %81 = load %struct.file*, %struct.file** %5, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @FMODE_READ, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %89 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %88, i32 0, i32 5
  store i32* null, i32** %89, align 8
  br label %116

90:                                               ; preds = %80
  %91 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %92 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %97 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %96, i32 0, i32 0
  store i32 8192, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %100 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @tomoyo_alloc(i32 %101)
  %103 = bitcast i8* %102 to %struct.tomoyo_io_buffer*
  %104 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %105 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %104, i32 0, i32 2
  store %struct.tomoyo_io_buffer* %103, %struct.tomoyo_io_buffer** %105, align 8
  %106 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %107 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %106, i32 0, i32 2
  %108 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %107, align 8
  %109 = icmp ne %struct.tomoyo_io_buffer* %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %98
  %111 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %112 = call i32 @tomoyo_free(%struct.tomoyo_io_buffer* %111)
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %165

115:                                              ; preds = %98
  br label %116

116:                                              ; preds = %115, %87
  %117 = load %struct.file*, %struct.file** %5, align 8
  %118 = getelementptr inbounds %struct.file, %struct.file* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @FMODE_WRITE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %116
  %124 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %125 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %124, i32 0, i32 4
  store i32* null, i32** %125, align 8
  br label %155

126:                                              ; preds = %116
  %127 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %128 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %154

131:                                              ; preds = %126
  %132 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %133 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %132, i32 0, i32 1
  store i32 8192, i32* %133, align 4
  %134 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %135 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @tomoyo_alloc(i32 %136)
  %138 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %139 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  %140 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %141 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %153, label %144

144:                                              ; preds = %131
  %145 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %146 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %145, i32 0, i32 2
  %147 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %146, align 8
  %148 = call i32 @tomoyo_free(%struct.tomoyo_io_buffer* %147)
  %149 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %150 = call i32 @tomoyo_free(%struct.tomoyo_io_buffer* %149)
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %165

153:                                              ; preds = %131
  br label %154

154:                                              ; preds = %153, %126
  br label %155

155:                                              ; preds = %154, %123
  %156 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %157 = load %struct.file*, %struct.file** %5, align 8
  %158 = getelementptr inbounds %struct.file, %struct.file* %157, i32 0, i32 1
  store %struct.tomoyo_io_buffer* %156, %struct.tomoyo_io_buffer** %158, align 8
  %159 = load i32, i32* %4, align 4
  %160 = icmp eq i32 %159, 129
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load %struct.file*, %struct.file** %5, align 8
  %163 = call i32 @tomoyo_read_control(%struct.file* %162, i32* null, i32 0)
  br label %164

164:                                              ; preds = %161, %155
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %144, %110, %11
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i8* @tomoyo_alloc(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tomoyo_free(%struct.tomoyo_io_buffer*) #1

declare dso_local i32 @tomoyo_read_control(%struct.file*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
