; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_devtree.c_proc_device_tree_add_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_devtree.c_proc_device_tree_add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i8*, %struct.property* }
%struct.property = type { i8*, %struct.property* }
%struct.proc_dir_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_device_tree_add_node(%struct.device_node* %0, %struct.proc_dir_entry* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.proc_dir_entry*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.proc_dir_entry* %1, %struct.proc_dir_entry** %4, align 8
  %9 = load %struct.device_node*, %struct.device_node** %3, align 8
  %10 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %11 = call i32 @set_node_proc_entry(%struct.device_node* %9, %struct.proc_dir_entry* %10)
  store %struct.device_node* null, %struct.device_node** %7, align 8
  br label %12

12:                                               ; preds = %48, %2
  %13 = load %struct.device_node*, %struct.device_node** %3, align 8
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = call %struct.device_node* @of_get_next_child(%struct.device_node* %13, %struct.device_node* %14)
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %17, label %51

17:                                               ; preds = %12
  %18 = load %struct.device_node*, %struct.device_node** %7, align 8
  %19 = getelementptr inbounds %struct.device_node, %struct.device_node* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @strrchr(i8* %20, i8 signext 47)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = getelementptr inbounds %struct.device_node, %struct.device_node* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  br label %31

28:                                               ; preds = %17
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %8, align 8
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @duplicate_name(%struct.proc_dir_entry* %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.device_node*, %struct.device_node** %3, align 8
  %38 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @fixup_name(%struct.device_node* %37, %struct.proc_dir_entry* %38, i8* %39)
  store i8* %40, i8** %8, align 8
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %44 = call %struct.proc_dir_entry* @proc_mkdir(i8* %42, %struct.proc_dir_entry* %43)
  store %struct.proc_dir_entry* %44, %struct.proc_dir_entry** %6, align 8
  %45 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %46 = icmp eq %struct.proc_dir_entry* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %51

48:                                               ; preds = %41
  %49 = load %struct.device_node*, %struct.device_node** %7, align 8
  %50 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  call void @proc_device_tree_add_node(%struct.device_node* %49, %struct.proc_dir_entry* %50)
  br label %12

51:                                               ; preds = %47, %12
  %52 = load %struct.device_node*, %struct.device_node** %7, align 8
  %53 = call i32 @of_node_put(%struct.device_node* %52)
  %54 = load %struct.device_node*, %struct.device_node** %3, align 8
  %55 = getelementptr inbounds %struct.device_node, %struct.device_node* %54, i32 0, i32 1
  %56 = load %struct.property*, %struct.property** %55, align 8
  store %struct.property* %56, %struct.property** %5, align 8
  br label %57

57:                                               ; preds = %82, %51
  %58 = load %struct.property*, %struct.property** %5, align 8
  %59 = icmp ne %struct.property* %58, null
  br i1 %59, label %60, label %86

60:                                               ; preds = %57
  %61 = load %struct.property*, %struct.property** %5, align 8
  %62 = getelementptr inbounds %struct.property, %struct.property* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %8, align 8
  %64 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i64 @duplicate_name(%struct.proc_dir_entry* %64, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.device_node*, %struct.device_node** %3, align 8
  %70 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i8* @fixup_name(%struct.device_node* %69, %struct.proc_dir_entry* %70, i8* %71)
  store i8* %72, i8** %8, align 8
  br label %73

73:                                               ; preds = %68, %60
  %74 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %75 = load %struct.property*, %struct.property** %5, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call %struct.proc_dir_entry* @__proc_device_tree_add_prop(%struct.proc_dir_entry* %74, %struct.property* %75, i8* %76)
  store %struct.proc_dir_entry* %77, %struct.proc_dir_entry** %6, align 8
  %78 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %79 = icmp eq %struct.proc_dir_entry* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %86

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.property*, %struct.property** %5, align 8
  %84 = getelementptr inbounds %struct.property, %struct.property* %83, i32 0, i32 1
  %85 = load %struct.property*, %struct.property** %84, align 8
  store %struct.property* %85, %struct.property** %5, align 8
  br label %57

86:                                               ; preds = %80, %57
  ret void
}

declare dso_local i32 @set_node_proc_entry(%struct.device_node*, %struct.proc_dir_entry*) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @duplicate_name(%struct.proc_dir_entry*, i8*) #1

declare dso_local i8* @fixup_name(%struct.device_node*, %struct.proc_dir_entry*, i8*) #1

declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8*, %struct.proc_dir_entry*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.proc_dir_entry* @__proc_device_tree_add_prop(%struct.proc_dir_entry*, %struct.property*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
