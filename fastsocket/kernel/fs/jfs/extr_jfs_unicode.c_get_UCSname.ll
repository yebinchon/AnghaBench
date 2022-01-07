; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_unicode.c_get_UCSname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_unicode.c_get_UCSname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.component_name = type { i32, i32* }
%struct.dentry = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nls_table = type { i32 }
%struct.TYPE_4__ = type { %struct.nls_table* }

@JFS_NAME_MAX = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_UCSname(%struct.component_name* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.component_name*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nls_table*, align 8
  %7 = alloca i32, align 4
  store %struct.component_name* %0, %struct.component_name** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_4__* @JFS_SBI(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  store %struct.nls_table* %13, %struct.nls_table** %6, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @JFS_NAME_MAX, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENAMETOOLONG, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %67

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_NOFS, align 4
  %31 = call i32* @kmalloc(i32 %29, i32 %30)
  %32 = load %struct.component_name*, %struct.component_name** %4, align 8
  %33 = getelementptr inbounds %struct.component_name, %struct.component_name* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load %struct.component_name*, %struct.component_name** %4, align 8
  %35 = getelementptr inbounds %struct.component_name, %struct.component_name* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %67

41:                                               ; preds = %24
  %42 = load %struct.component_name*, %struct.component_name** %4, align 8
  %43 = getelementptr inbounds %struct.component_name, %struct.component_name* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.nls_table*, %struct.nls_table** %6, align 8
  %51 = call i32 @jfs_strtoUCS(i32* %44, i32 %48, i32 %49, %struct.nls_table* %50)
  %52 = load %struct.component_name*, %struct.component_name** %4, align 8
  %53 = getelementptr inbounds %struct.component_name, %struct.component_name* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.component_name*, %struct.component_name** %4, align 8
  %55 = getelementptr inbounds %struct.component_name, %struct.component_name* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %41
  %59 = load %struct.component_name*, %struct.component_name** %4, align 8
  %60 = getelementptr inbounds %struct.component_name, %struct.component_name* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @kfree(i32* %61)
  %63 = load %struct.component_name*, %struct.component_name** %4, align 8
  %64 = getelementptr inbounds %struct.component_name, %struct.component_name* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %58, %38, %21
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_4__* @JFS_SBI(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @jfs_strtoUCS(i32*, i32, i32, %struct.nls_table*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
