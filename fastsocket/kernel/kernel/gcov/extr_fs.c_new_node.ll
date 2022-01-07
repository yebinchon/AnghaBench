; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_fs.c_new_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_fs.c_new_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_node = type { i32, i32, i32, i32, i32 }
%struct.gcov_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@gcov_data_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"could not create file\0A\00", align 1
@all_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gcov_node* (%struct.gcov_node*, %struct.gcov_info*, i8*)* @new_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gcov_node* @new_node(%struct.gcov_node* %0, %struct.gcov_info* %1, i8* %2) #0 {
  %4 = alloca %struct.gcov_node*, align 8
  %5 = alloca %struct.gcov_node*, align 8
  %6 = alloca %struct.gcov_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gcov_node*, align 8
  store %struct.gcov_node* %0, %struct.gcov_node** %5, align 8
  store %struct.gcov_info* %1, %struct.gcov_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = add i64 20, %10
  %12 = add i64 %11, 1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.gcov_node* @kzalloc(i64 %12, i32 %13)
  store %struct.gcov_node* %14, %struct.gcov_node** %8, align 8
  %15 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %16 = icmp ne %struct.gcov_node* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = call i32 @pr_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.gcov_node* null, %struct.gcov_node** %4, align 8
  br label %77

19:                                               ; preds = %3
  %20 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %21 = load %struct.gcov_info*, %struct.gcov_info** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %24 = call i32 @init_node(%struct.gcov_node* %20, %struct.gcov_info* %21, i8* %22, %struct.gcov_node* %23)
  %25 = load %struct.gcov_info*, %struct.gcov_info** %6, align 8
  %26 = icmp ne %struct.gcov_info* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %19
  %28 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %29 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @deskew(i32 %30)
  %32 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %33 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %36 = call i32 @debugfs_create_file(i32 %31, i32 384, i32 %34, %struct.gcov_node* %35, i32* @gcov_data_fops)
  %37 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %38 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  br label %49

39:                                               ; preds = %19
  %40 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %41 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %44 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @debugfs_create_dir(i32 %42, i32 %45)
  %47 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %48 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %39, %27
  %50 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %51 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = call i32 @pr_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %57 = call i32 @kfree(%struct.gcov_node* %56)
  store %struct.gcov_node* null, %struct.gcov_node** %4, align 8
  br label %77

58:                                               ; preds = %49
  %59 = load %struct.gcov_info*, %struct.gcov_info** %6, align 8
  %60 = icmp ne %struct.gcov_info* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %63 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %64 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @add_links(%struct.gcov_node* %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %58
  %68 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %69 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %68, i32 0, i32 2
  %70 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %71 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %70, i32 0, i32 1
  %72 = call i32 @list_add(i32* %69, i32* %71)
  %73 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %74 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %73, i32 0, i32 0
  %75 = call i32 @list_add(i32* %74, i32* @all_head)
  %76 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  store %struct.gcov_node* %76, %struct.gcov_node** %4, align 8
  br label %77

77:                                               ; preds = %67, %54, %17
  %78 = load %struct.gcov_node*, %struct.gcov_node** %4, align 8
  ret %struct.gcov_node* %78
}

declare dso_local %struct.gcov_node* @kzalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @init_node(%struct.gcov_node*, %struct.gcov_info*, i8*, %struct.gcov_node*) #1

declare dso_local i32 @debugfs_create_file(i32, i32, i32, %struct.gcov_node*, i32*) #1

declare dso_local i32 @deskew(i32) #1

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @kfree(%struct.gcov_node*) #1

declare dso_local i32 @add_links(%struct.gcov_node*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
