; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.comedi_device_file_info = type { %struct.comedi_device* }
%struct.comedi_device = type { i32, i64, i32, i32 (%struct.comedi_device*)*, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"invalid minor number\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"in request module\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"not attached and not CAP_NET_ADMIN\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@COMEDI_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @comedi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_device_file_info*, align 8
  %8 = alloca %struct.comedi_device*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.comedi_device_file_info* @comedi_get_device_file_info(i32 %11)
  store %struct.comedi_device_file_info* %12, %struct.comedi_device_file_info** %7, align 8
  %13 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %7, align 8
  %14 = icmp ne %struct.comedi_device_file_info* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %16, i32 0, i32 0
  %18 = load %struct.comedi_device*, %struct.comedi_device** %17, align 8
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi %struct.comedi_device* [ %18, %15 ], [ null, %19 ]
  store %struct.comedi_device* %21, %struct.comedi_device** %8, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %23 = icmp eq %struct.comedi_device* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = call i32 @DPRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %137

28:                                               ; preds = %20
  %29 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 2
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %84

37:                                               ; preds = %28
  %38 = load i32, i32* @CAP_NET_ADMIN, align 4
  %39 = call i64 @capable(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %37
  %42 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = call i32 @DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 2
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %137

53:                                               ; preds = %41, %37
  %54 = load i32, i32* @CAP_NET_ADMIN, align 4
  %55 = call i64 @capable(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %84

63:                                               ; preds = %57, %53
  %64 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* @CAP_NET_ADMIN, align 4
  %74 = call i64 @capable(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = call i32 @DPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 2
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %137

83:                                               ; preds = %72, %63
  br label %84

84:                                               ; preds = %83, %62, %36
  %85 = load i32, i32* @THIS_MODULE, align 4
  %86 = call i32 @__module_get(i32 %85)
  %87 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %84
  %92 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %93 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %92, i32 0, i32 5
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @try_module_get(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %91
  %100 = load i32, i32* @THIS_MODULE, align 4
  %101 = call i32 @module_put(i32 %100)
  %102 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %103 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %102, i32 0, i32 2
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* @ENOSYS, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %137

107:                                              ; preds = %91
  br label %108

108:                                              ; preds = %107, %84
  %109 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %110 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %108
  %114 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %115 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %120 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %119, i32 0, i32 3
  %121 = load i32 (%struct.comedi_device*)*, i32 (%struct.comedi_device*)** %120, align 8
  %122 = icmp ne i32 (%struct.comedi_device*)* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %125 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %124, i32 0, i32 3
  %126 = load i32 (%struct.comedi_device*)*, i32 (%struct.comedi_device*)** %125, align 8
  %127 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %128 = call i32 %126(%struct.comedi_device* %127)
  br label %129

129:                                              ; preds = %123, %118, %113, %108
  %130 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %131 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %135 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %134, i32 0, i32 2
  %136 = call i32 @mutex_unlock(i32* %135)
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %129, %99, %76, %46, %24
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.comedi_device_file_info* @comedi_get_device_file_info(i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
