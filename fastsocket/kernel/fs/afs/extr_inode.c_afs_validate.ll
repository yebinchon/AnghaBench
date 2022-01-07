; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_inode.c_afs_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_inode.c_afs_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i64, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"{v={%x:%u} fl=%lx},%x\00", align 1
@AFS_VNODE_CB_BROKEN = common dso_local global i32 0, align 4
@AFS_VNODE_MODIFIED = common dso_local global i32 0, align 4
@AFS_VNODE_ZAP_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"callback expired\00", align 1
@AFS_VNODE_DELETED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"not promised\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"new promise [fl=%lx]\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"file already deleted\00", align 1
@ESTALE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_validate(%struct.afs_vnode* %0, %struct.key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.afs_vnode*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %4, align 8
  store %struct.key* %1, %struct.key** %5, align 8
  %7 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %8 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %12 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %16 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.key*, %struct.key** %5, align 8
  %19 = call i32 @key_serial(%struct.key* %18)
  %20 = call i32 @_enter(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14, i32 %17, i32 %19)
  %21 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %22 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %2
  %26 = load i32, i32* @AFS_VNODE_CB_BROKEN, align 4
  %27 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %28 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %27, i32 0, i32 2
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %58, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @AFS_VNODE_MODIFIED, align 4
  %33 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %34 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %33, i32 0, i32 2
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @AFS_VNODE_ZAP_DATA, align 4
  %39 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %40 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %39, i32 0, i32 2
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %37
  %44 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %45 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 (...) @get_seconds()
  %48 = add nsw i64 %47, 10
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @AFS_VNODE_CB_BROKEN, align 4
  %53 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %54 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %53, i32 0, i32 2
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  br label %57

56:                                               ; preds = %43
  br label %119

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %37, %31, %25, %2
  %59 = load i32, i32* @AFS_VNODE_DELETED, align 4
  %60 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %61 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %60, i32 0, i32 2
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %119

65:                                               ; preds = %58
  %66 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %67 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %66, i32 0, i32 1
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %70 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load i32, i32* @AFS_VNODE_CB_BROKEN, align 4
  %75 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %76 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %75, i32 0, i32 2
  %77 = call i64 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %73, %65
  %80 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %82 = load %struct.key*, %struct.key** %5, align 8
  %83 = call i32 @afs_vnode_fetch_status(%struct.afs_vnode* %81, i32* null, %struct.key* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %121

87:                                               ; preds = %79
  %88 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %89 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %73
  %93 = load i32, i32* @AFS_VNODE_DELETED, align 4
  %94 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %95 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %94, i32 0, i32 2
  %96 = call i64 @test_bit(i32 %93, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* @ESTALE, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %121

102:                                              ; preds = %92
  %103 = load i32, i32* @AFS_VNODE_ZAP_DATA, align 4
  %104 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %105 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %104, i32 0, i32 2
  %106 = call i64 @test_and_clear_bit(i32 %103, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %110 = call i32 @afs_zap_data(%struct.afs_vnode* %109)
  br label %111

111:                                              ; preds = %108, %102
  %112 = load i32, i32* @AFS_VNODE_MODIFIED, align 4
  %113 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %114 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %113, i32 0, i32 2
  %115 = call i32 @clear_bit(i32 %112, i32* %114)
  %116 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %117 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  br label %119

119:                                              ; preds = %111, %64, %56
  %120 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %128

121:                                              ; preds = %98, %86
  %122 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %123 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %122, i32 0, i32 1
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %6, align 4
  %126 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %121, %119
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @afs_vnode_fetch_status(%struct.afs_vnode*, i32*, %struct.key*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @afs_zap_data(%struct.afs_vnode*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @_leave(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
