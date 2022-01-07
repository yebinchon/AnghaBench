; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_obtain_alias.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_obtain_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i8* }
%struct.dentry = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, %struct.dentry*, %struct.TYPE_2__*, %struct.dentry* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, %struct.inode*, %struct.TYPE_2__*, %struct.inode* }

@d_obtain_alias.anonstring = internal constant %struct.qstr { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ESTALE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dcache_lock = common dso_local global i32 0, align 4
@DCACHE_DISCONNECTED = common dso_local global i32 0, align 4
@DCACHE_UNHASHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @d_obtain_alias(%struct.inode* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = icmp ne %struct.inode* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ESTALE, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.inode* @ERR_PTR(i32 %10)
  %12 = bitcast %struct.inode* %11 to %struct.dentry*
  store %struct.dentry* %12, %struct.dentry** %2, align 8
  br label %115

13:                                               ; preds = %1
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call i64 @IS_ERR(%struct.inode* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call %struct.inode* @ERR_CAST(%struct.inode* %18)
  %20 = bitcast %struct.inode* %19 to %struct.dentry*
  store %struct.dentry* %20, %struct.dentry** %2, align 8
  br label %115

21:                                               ; preds = %13
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call %struct.inode* @d_find_any_alias(%struct.inode* %22)
  %24 = bitcast %struct.inode* %23 to %struct.dentry*
  store %struct.dentry* %24, %struct.dentry** %5, align 8
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = icmp ne %struct.dentry* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %98

28:                                               ; preds = %21
  %29 = call %struct.inode* @d_alloc(i32* null, %struct.qstr* @d_obtain_alias.anonstring)
  %30 = bitcast %struct.inode* %29 to %struct.dentry*
  store %struct.dentry* %30, %struct.dentry** %4, align 8
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = icmp ne %struct.dentry* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.inode* @ERR_PTR(i32 %35)
  %37 = bitcast %struct.inode* %36 to %struct.dentry*
  store %struct.dentry* %37, %struct.dentry** %5, align 8
  br label %98

38:                                               ; preds = %28
  %39 = load %struct.dentry*, %struct.dentry** %4, align 8
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 8
  store %struct.dentry* %39, %struct.dentry** %41, align 8
  %42 = call i32 @spin_lock(i32* @dcache_lock)
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = call %struct.inode* @__d_find_any_alias(%struct.inode* %43)
  %45 = bitcast %struct.inode* %44 to %struct.dentry*
  store %struct.dentry* %45, %struct.dentry** %5, align 8
  %46 = load %struct.dentry*, %struct.dentry** %5, align 8
  %47 = icmp ne %struct.dentry* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = call i32 @spin_unlock(i32* @dcache_lock)
  %50 = load %struct.dentry*, %struct.dentry** %4, align 8
  %51 = bitcast %struct.dentry* %50 to %struct.inode*
  %52 = call i32 @dput(%struct.inode* %51)
  br label %98

53:                                               ; preds = %38
  %54 = load %struct.dentry*, %struct.dentry** %4, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 0
  %56 = call i32 @spin_lock(i32* %55)
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load %struct.dentry*, %struct.dentry** %4, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 7
  store %struct.TYPE_2__* %59, %struct.TYPE_2__** %61, align 8
  %62 = load %struct.inode*, %struct.inode** %3, align 8
  %63 = bitcast %struct.inode* %62 to %struct.dentry*
  %64 = load %struct.dentry*, %struct.dentry** %4, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 6
  store %struct.dentry* %63, %struct.dentry** %65, align 8
  %66 = load i32, i32* @DCACHE_DISCONNECTED, align 4
  %67 = load %struct.dentry*, %struct.dentry** %4, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @DCACHE_UNHASHED, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.dentry*, %struct.dentry** %4, align 8
  %74 = getelementptr inbounds %struct.dentry, %struct.dentry* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.dentry*, %struct.dentry** %4, align 8
  %78 = getelementptr inbounds %struct.dentry, %struct.dentry* %77, i32 0, i32 4
  %79 = load %struct.inode*, %struct.inode** %3, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 3
  %81 = call i32 @list_add(i32* %78, i32* %80)
  %82 = load %struct.dentry*, %struct.dentry** %4, align 8
  %83 = getelementptr inbounds %struct.dentry, %struct.dentry* %82, i32 0, i32 2
  %84 = load %struct.inode*, %struct.inode** %3, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = call i32 @hlist_add_head(i32* %83, i32* %87)
  %89 = load %struct.dentry*, %struct.dentry** %4, align 8
  %90 = getelementptr inbounds %struct.dentry, %struct.dentry* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = call i32 @spin_unlock(i32* @dcache_lock)
  %93 = load %struct.dentry*, %struct.dentry** %4, align 8
  %94 = bitcast %struct.dentry* %93 to %struct.inode*
  %95 = load %struct.inode*, %struct.inode** %3, align 8
  %96 = call i32 @security_d_instantiate(%struct.inode* %94, %struct.inode* %95)
  %97 = load %struct.dentry*, %struct.dentry** %4, align 8
  store %struct.dentry* %97, %struct.dentry** %2, align 8
  br label %115

98:                                               ; preds = %48, %33, %27
  %99 = load %struct.dentry*, %struct.dentry** %5, align 8
  %100 = icmp ne %struct.dentry* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load %struct.dentry*, %struct.dentry** %5, align 8
  %103 = bitcast %struct.dentry* %102 to %struct.inode*
  %104 = call i64 @IS_ERR(%struct.inode* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load %struct.dentry*, %struct.dentry** %5, align 8
  %108 = bitcast %struct.dentry* %107 to %struct.inode*
  %109 = load %struct.inode*, %struct.inode** %3, align 8
  %110 = call i32 @security_d_instantiate(%struct.inode* %108, %struct.inode* %109)
  br label %111

111:                                              ; preds = %106, %101, %98
  %112 = load %struct.inode*, %struct.inode** %3, align 8
  %113 = call i32 @iput(%struct.inode* %112)
  %114 = load %struct.dentry*, %struct.dentry** %5, align 8
  store %struct.dentry* %114, %struct.dentry** %2, align 8
  br label %115

115:                                              ; preds = %111, %53, %17, %8
  %116 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %116
}

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.inode* @d_find_any_alias(%struct.inode*) #1

declare dso_local %struct.inode* @d_alloc(i32*, %struct.qstr*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.inode* @__d_find_any_alias(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dput(%struct.inode*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @security_d_instantiate(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
