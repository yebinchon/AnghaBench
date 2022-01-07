; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_state_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLIENT_HASH_SIZE = common dso_local global i32 0, align 4
@conf_id_hashtbl = common dso_local global i32* null, align 8
@conf_str_hashtbl = common dso_local global i32* null, align 8
@unconf_str_hashtbl = common dso_local global i32* null, align 8
@unconf_id_hashtbl = common dso_local global i32* null, align 8
@reclaim_str_hashtbl = common dso_local global i32* null, align 8
@SESSION_HASH_SIZE = common dso_local global i32 0, align 4
@sessionid_hashtbl = common dso_local global i32* null, align 8
@FILE_HASH_SIZE = common dso_local global i32 0, align 4
@file_hashtbl = common dso_local global i32* null, align 8
@OWNER_HASH_SIZE = common dso_local global i32 0, align 4
@ownerstr_hashtbl = common dso_local global i32* null, align 8
@ownerid_hashtbl = common dso_local global i32* null, align 8
@STATEID_HASH_SIZE = common dso_local global i32 0, align 4
@stateid_hashtbl = common dso_local global i32* null, align 8
@lockstateid_hashtbl = common dso_local global i32* null, align 8
@LOCK_HASH_SIZE = common dso_local global i32 0, align 4
@lock_ownerid_hashtbl = common dso_local global i32* null, align 8
@lock_ownerstr_hashtbl = common dso_local global i32* null, align 8
@onestateid = common dso_local global i32 0, align 4
@close_lru = common dso_local global i32 0, align 4
@client_lru = common dso_local global i32 0, align 4
@del_recall_lru = common dso_local global i32 0, align 4
@reclaim_str_hashtbl_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_state_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @nfsd4_init_slabs()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %1, align 4
  br label %133

9:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %40, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @CLIENT_HASH_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = load i32*, i32** @conf_id_hashtbl, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load i32*, i32** @conf_str_hashtbl, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load i32*, i32** @unconf_str_hashtbl, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load i32*, i32** @unconf_id_hashtbl, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load i32*, i32** @reclaim_str_hashtbl, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  br label %40

40:                                               ; preds = %14
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %10

43:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %54, %43
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @SESSION_HASH_SIZE, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32*, i32** @sessionid_hashtbl, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %44

57:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %68, %57
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @FILE_HASH_SIZE, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32*, i32** @file_hashtbl, align 8
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  br label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %2, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %2, align 4
  br label %58

71:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %87, %71
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* @OWNER_HASH_SIZE, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load i32*, i32** @ownerstr_hashtbl, align 8
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load i32*, i32** @ownerid_hashtbl, align 8
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @INIT_LIST_HEAD(i32* %85)
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %2, align 4
  br label %72

90:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %106, %90
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @STATEID_HASH_SIZE, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %91
  %96 = load i32*, i32** @stateid_hashtbl, align 8
  %97 = load i32, i32* %2, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = call i32 @INIT_LIST_HEAD(i32* %99)
  %101 = load i32*, i32** @lockstateid_hashtbl, align 8
  %102 = load i32, i32* %2, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @INIT_LIST_HEAD(i32* %104)
  br label %106

106:                                              ; preds = %95
  %107 = load i32, i32* %2, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %2, align 4
  br label %91

109:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %125, %109
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* @LOCK_HASH_SIZE, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load i32*, i32** @lock_ownerid_hashtbl, align 8
  %116 = load i32, i32* %2, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = call i32 @INIT_LIST_HEAD(i32* %118)
  %120 = load i32*, i32** @lock_ownerstr_hashtbl, align 8
  %121 = load i32, i32* %2, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = call i32 @INIT_LIST_HEAD(i32* %123)
  br label %125

125:                                              ; preds = %114
  %126 = load i32, i32* %2, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %2, align 4
  br label %110

128:                                              ; preds = %110
  %129 = call i32 @memset(i32* @onestateid, i32 -1, i32 4)
  %130 = call i32 @INIT_LIST_HEAD(i32* @close_lru)
  %131 = call i32 @INIT_LIST_HEAD(i32* @client_lru)
  %132 = call i32 @INIT_LIST_HEAD(i32* @del_recall_lru)
  store i64 0, i64* @reclaim_str_hashtbl_size, align 8
  store i32 0, i32* %1, align 4
  br label %133

133:                                              ; preds = %128, %7
  %134 = load i32, i32* %1, align 4
  ret i32 %134
}

declare dso_local i32 @nfsd4_init_slabs(...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
