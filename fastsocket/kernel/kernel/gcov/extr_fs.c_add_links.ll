; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_fs.c_add_links.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_fs.c_add_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.gcov_node = type { i8* }
%struct.dentry = type { i32 }
%struct.TYPE_4__ = type { i32 }

@gcov_link = common dso_local global %struct.TYPE_5__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gcov_node*, %struct.dentry*)* @add_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_links(%struct.gcov_node* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.gcov_node*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gcov_node* %0, %struct.gcov_node** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %18, %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gcov_link, align 8
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %9

21:                                               ; preds = %9
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kcalloc(i32 %22, i32 8, i32 %23)
  %25 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %26 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %28 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %109

32:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %82, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %85

37:                                               ; preds = %33
  %38 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %39 = call %struct.TYPE_4__* @get_node_info(%struct.gcov_node* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gcov_link, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = call i8* @get_link_target(i32 %41, %struct.TYPE_5__* %45)
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %37
  br label %86

50:                                               ; preds = %37
  %51 = load i8*, i8** %6, align 8
  %52 = call i8* @strrchr(i8* %51, i8 signext 47)
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %86

56:                                               ; preds = %50
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @deskew(i8* %59)
  %61 = load %struct.dentry*, %struct.dentry** %4, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call signext i8 @debugfs_create_symlink(i32 %60, %struct.dentry* %61, i8* %62)
  %64 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %65 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 %63, i8* %69, align 1
  %70 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %71 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %56
  br label %86

79:                                               ; preds = %56
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @kfree(i8* %80)
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %33

85:                                               ; preds = %33
  br label %109

86:                                               ; preds = %78, %55, %49
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @kfree(i8* %87)
  br label %89

89:                                               ; preds = %93, %86
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %8, align 4
  %92 = icmp sgt i32 %90, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %95 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @debugfs_remove(i8 signext %100)
  br label %89

102:                                              ; preds = %89
  %103 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %104 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @kfree(i8* %105)
  %107 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %108 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %107, i32 0, i32 0
  store i8* null, i8** %108, align 8
  br label %109

109:                                              ; preds = %102, %85, %31
  ret void
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @get_link_target(i32, %struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_4__* @get_node_info(%struct.gcov_node*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local signext i8 @debugfs_create_symlink(i32, %struct.dentry*, i8*) #1

declare dso_local i32 @deskew(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @debugfs_remove(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
