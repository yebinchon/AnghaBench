; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_file.c_fill_read_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_file.c_fill_read_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.configfs_buffer = type { i8*, i8*, i64, %struct.configfs_item_operations* }
%struct.configfs_item_operations = type { i8* (%struct.config_item*, %struct.configfs_attribute*, i8*)* }
%struct.config_item = type opaque
%struct.configfs_attribute = type opaque
%struct.configfs_attribute.0 = type { i32 }
%struct.config_item.1 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SIMPLE_ATTR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.configfs_buffer*)* @fill_read_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_read_buffer(%struct.dentry* %0, %struct.configfs_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.configfs_buffer*, align 8
  %6 = alloca %struct.configfs_attribute.0*, align 8
  %7 = alloca %struct.config_item.1*, align 8
  %8 = alloca %struct.configfs_item_operations*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.configfs_buffer* %1, %struct.configfs_buffer** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = call %struct.configfs_attribute.0* @to_attr(%struct.dentry* %11)
  store %struct.configfs_attribute.0* %12, %struct.configfs_attribute.0** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.config_item.1* @to_item(i32 %15)
  store %struct.config_item.1* %16, %struct.config_item.1** %7, align 8
  %17 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %17, i32 0, i32 3
  %19 = load %struct.configfs_item_operations*, %struct.configfs_item_operations** %18, align 8
  store %struct.configfs_item_operations* %19, %struct.configfs_item_operations** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i64 @get_zeroed_page(i32 %25)
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %29 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %24, %2
  %31 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %69

38:                                               ; preds = %30
  %39 = load %struct.configfs_item_operations*, %struct.configfs_item_operations** %8, align 8
  %40 = getelementptr inbounds %struct.configfs_item_operations, %struct.configfs_item_operations* %39, i32 0, i32 0
  %41 = load i8* (%struct.config_item*, %struct.configfs_attribute*, i8*)*, i8* (%struct.config_item*, %struct.configfs_attribute*, i8*)** %40, align 8
  %42 = load %struct.config_item.1*, %struct.config_item.1** %7, align 8
  %43 = bitcast %struct.config_item.1* %42 to %struct.config_item*
  %44 = load %struct.configfs_attribute.0*, %struct.configfs_attribute.0** %6, align 8
  %45 = bitcast %struct.configfs_attribute.0* %44 to %struct.configfs_attribute*
  %46 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %47 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* %41(%struct.config_item* %43, %struct.configfs_attribute* %45, i8* %48)
  store i8* %49, i8** %10, align 8
  %50 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %51 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* @SIMPLE_ATTR_SIZE, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = icmp ugt i8* %52, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load i8*, i8** %10, align 8
  %59 = icmp uge i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %38
  %61 = load i8*, i8** %10, align 8
  %62 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %63 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  br label %67

64:                                               ; preds = %38
  %65 = load i8*, i8** %10, align 8
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %35
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.configfs_attribute.0* @to_attr(%struct.dentry*) #1

declare dso_local %struct.config_item.1* @to_item(i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
