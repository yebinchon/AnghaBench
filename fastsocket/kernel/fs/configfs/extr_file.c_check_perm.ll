; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_file.c_check_perm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_file.c_check_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.configfs_buffer*, %struct.TYPE_4__ }
%struct.configfs_buffer = type { i32, %struct.configfs_item_operations*, i32 }
%struct.configfs_item_operations = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.config_item = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.configfs_item_operations* }
%struct.configfs_attribute = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @check_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_perm(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca %struct.configfs_attribute*, align 8
  %7 = alloca %struct.configfs_buffer*, align 8
  %8 = alloca %struct.configfs_item_operations*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.config_item* @configfs_get_config_item(i32 %15)
  store %struct.config_item* %16, %struct.config_item** %5, align 8
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = call %struct.configfs_attribute* @to_attr(%struct.TYPE_6__* %20)
  store %struct.configfs_attribute* %21, %struct.configfs_attribute** %6, align 8
  store %struct.configfs_item_operations* null, %struct.configfs_item_operations** %8, align 8
  store i32 0, i32* %9, align 4
  %22 = load %struct.config_item*, %struct.config_item** %5, align 8
  %23 = icmp ne %struct.config_item* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.configfs_attribute*, %struct.configfs_attribute** %6, align 8
  %26 = icmp ne %struct.configfs_attribute* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %2
  br label %111

28:                                               ; preds = %24
  %29 = load %struct.configfs_attribute*, %struct.configfs_attribute** %6, align 8
  %30 = getelementptr inbounds %struct.configfs_attribute, %struct.configfs_attribute* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @try_module_get(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %122

37:                                               ; preds = %28
  %38 = load %struct.config_item*, %struct.config_item** %5, align 8
  %39 = getelementptr inbounds %struct.config_item, %struct.config_item* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.config_item*, %struct.config_item** %5, align 8
  %44 = getelementptr inbounds %struct.config_item, %struct.config_item* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.configfs_item_operations*, %struct.configfs_item_operations** %46, align 8
  store %struct.configfs_item_operations* %47, %struct.configfs_item_operations** %8, align 8
  br label %49

48:                                               ; preds = %37
  br label %114

49:                                               ; preds = %42
  %50 = load %struct.file*, %struct.file** %4, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @FMODE_WRITE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %49
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @S_IWUGO, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.configfs_item_operations*, %struct.configfs_item_operations** %8, align 8
  %65 = getelementptr inbounds %struct.configfs_item_operations, %struct.configfs_item_operations* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63, %56
  br label %114

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %49
  %71 = load %struct.file*, %struct.file** %4, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @FMODE_READ, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %70
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @S_IRUGO, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load %struct.configfs_item_operations*, %struct.configfs_item_operations** %8, align 8
  %86 = getelementptr inbounds %struct.configfs_item_operations, %struct.configfs_item_operations* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84, %77
  br label %114

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %70
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.configfs_buffer* @kzalloc(i32 24, i32 %92)
  store %struct.configfs_buffer* %93, %struct.configfs_buffer** %7, align 8
  %94 = load %struct.configfs_buffer*, %struct.configfs_buffer** %7, align 8
  %95 = icmp ne %struct.configfs_buffer* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %9, align 4
  br label %117

99:                                               ; preds = %91
  %100 = load %struct.configfs_buffer*, %struct.configfs_buffer** %7, align 8
  %101 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %100, i32 0, i32 2
  %102 = call i32 @mutex_init(i32* %101)
  %103 = load %struct.configfs_buffer*, %struct.configfs_buffer** %7, align 8
  %104 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.configfs_item_operations*, %struct.configfs_item_operations** %8, align 8
  %106 = load %struct.configfs_buffer*, %struct.configfs_buffer** %7, align 8
  %107 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %106, i32 0, i32 1
  store %struct.configfs_item_operations* %105, %struct.configfs_item_operations** %107, align 8
  %108 = load %struct.configfs_buffer*, %struct.configfs_buffer** %7, align 8
  %109 = load %struct.file*, %struct.file** %4, align 8
  %110 = getelementptr inbounds %struct.file, %struct.file* %109, i32 0, i32 1
  store %struct.configfs_buffer* %108, %struct.configfs_buffer** %110, align 8
  br label %122

111:                                              ; preds = %27
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %9, align 4
  br label %122

114:                                              ; preds = %89, %68, %48
  %115 = load i32, i32* @EACCES, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %114, %96
  %118 = load %struct.configfs_attribute*, %struct.configfs_attribute** %6, align 8
  %119 = getelementptr inbounds %struct.configfs_attribute, %struct.configfs_attribute* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @module_put(i32 %120)
  br label %122

122:                                              ; preds = %117, %111, %99, %34
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load %struct.config_item*, %struct.config_item** %5, align 8
  %127 = icmp ne %struct.config_item* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load %struct.config_item*, %struct.config_item** %5, align 8
  %130 = call i32 @config_item_put(%struct.config_item* %129)
  br label %131

131:                                              ; preds = %128, %125, %122
  %132 = load i32, i32* %9, align 4
  ret i32 %132
}

declare dso_local %struct.config_item* @configfs_get_config_item(i32) #1

declare dso_local %struct.configfs_attribute* @to_attr(%struct.TYPE_6__*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.configfs_buffer* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
