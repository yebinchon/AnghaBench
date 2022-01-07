; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_remove_nm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_remove_nm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64 }
%union.ubifs_key = type { i32 }
%struct.qstr = type { i32, %struct.ubifs_znode* }
%struct.ubifs_znode = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"%.*s, key %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"rc returned %d, znode %p, n %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_remove_nm(%struct.ubifs_info* %0, %union.ubifs_key* %1, %struct.qstr* %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %union.ubifs_key*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %5, align 8
  store %struct.qstr* %2, %struct.qstr** %6, align 8
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.qstr*, %struct.qstr** %6, align 8
  %14 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.qstr*, %struct.qstr** %6, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 1
  %18 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  %19 = load %union.ubifs_key*, %union.ubifs_key** %5, align 8
  %20 = call i32 @DBGKEY(%union.ubifs_key* %19)
  %21 = call i32 @dbg_tnc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15, %struct.ubifs_znode* %18, i32 %20)
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %23 = load %union.ubifs_key*, %union.ubifs_key** %5, align 8
  %24 = call i32 @lookup_level0_dirty(%struct.ubifs_info* %22, %union.ubifs_key* %23, %struct.ubifs_znode** %9, i32* %7)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %84

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %83

31:                                               ; preds = %28
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %38 = load %union.ubifs_key*, %union.ubifs_key** %5, align 8
  %39 = load %struct.qstr*, %struct.qstr** %6, align 8
  %40 = call i32 @fallible_resolve_collision(%struct.ubifs_info* %37, %union.ubifs_key* %38, %struct.ubifs_znode** %9, i32* %7, %struct.qstr* %39, i32 0)
  store i32 %40, i32* %8, align 4
  br label %46

41:                                               ; preds = %31
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %43 = load %union.ubifs_key*, %union.ubifs_key** %5, align 8
  %44 = load %struct.qstr*, %struct.qstr** %6, align 8
  %45 = call i32 @resolve_collision(%struct.ubifs_info* %42, %union.ubifs_key* %43, %struct.ubifs_znode** %9, i32* %7, %struct.qstr* %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @dbg_tnc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %47, %struct.ubifs_znode* %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %84

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  %58 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %59 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %64 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %68 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %69 = call %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info* %67, %struct.ubifs_znode* %68)
  store %struct.ubifs_znode* %69, %struct.ubifs_znode** %9, align 8
  %70 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %71 = call i64 @IS_ERR(%struct.ubifs_znode* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %75 = call i32 @PTR_ERR(%struct.ubifs_znode* %74)
  store i32 %75, i32* %8, align 4
  br label %84

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %62
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %79 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @tnc_delete(%struct.ubifs_info* %78, %struct.ubifs_znode* %79, i32 %80)
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %77, %54
  br label %83

83:                                               ; preds = %82, %28
  br label %84

84:                                               ; preds = %83, %73, %53, %27
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %89 = call i32 @dbg_check_tnc(%struct.ubifs_info* %88, i32 0)
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %92 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dbg_tnc(i8*, i32, %struct.ubifs_znode*, i32) #1

declare dso_local i32 @DBGKEY(%union.ubifs_key*) #1

declare dso_local i32 @lookup_level0_dirty(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @fallible_resolve_collision(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*, %struct.qstr*, i32) #1

declare dso_local i32 @resolve_collision(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*, %struct.qstr*) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @tnc_delete(%struct.ubifs_info*, %struct.ubifs_znode*, i32) #1

declare dso_local i32 @dbg_check_tnc(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
