; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_do_lookup_nm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_do_lookup_nm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.qstr = type { i32, %struct.ubifs_znode* }
%struct.ubifs_znode = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"name '%.*s' key %s\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"rc returned %d, znode %p, n %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %union.ubifs_key*, i8*, %struct.qstr*)* @do_lookup_nm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_lookup_nm(%struct.ubifs_info* %0, %union.ubifs_key* %1, i8* %2, %struct.qstr* %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %union.ubifs_key*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.qstr* %3, %struct.qstr** %8, align 8
  %13 = load %struct.qstr*, %struct.qstr** %8, align 8
  %14 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.qstr*, %struct.qstr** %8, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 1
  %18 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  %19 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %20 = call i32 @DBGKEY(%union.ubifs_key* %19)
  %21 = call i32 @dbg_tnc(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15, %struct.ubifs_znode* %18, i32 %20)
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %26 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %27 = call i32 @ubifs_lookup_level0(%struct.ubifs_info* %25, %union.ubifs_key* %26, %struct.ubifs_znode** %12, i32* %10)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  br label %74

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %11, align 4
  br label %74

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = icmp sge i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @ubifs_assert(i32 %42)
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %45 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %46 = load %struct.qstr*, %struct.qstr** %8, align 8
  %47 = call i32 @resolve_collision(%struct.ubifs_info* %44, %union.ubifs_key* %45, %struct.ubifs_znode** %12, i32* %10, %struct.qstr* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @dbg_tnc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %48, %struct.ubifs_znode* %49, i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %39
  br label %74

58:                                               ; preds = %39
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %74

64:                                               ; preds = %58
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %66 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %67 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @tnc_read_node_nm(%struct.ubifs_info* %65, i32* %71, i8* %72)
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %64, %61, %57, %36, %30
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local i32 @dbg_tnc(i8*, i32, %struct.ubifs_znode*, i32) #1

declare dso_local i32 @DBGKEY(%union.ubifs_key*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_lookup_level0(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @resolve_collision(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*, %struct.qstr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tnc_read_node_nm(%struct.ubifs_info*, i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
