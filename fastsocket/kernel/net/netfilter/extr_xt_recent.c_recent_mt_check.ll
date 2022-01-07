; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_recent.c_recent_mt_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_recent.c_recent_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.xt_recent_mtinfo* }
%struct.xt_recent_mtinfo = type { i32, i64, i8*, i64 }
%struct.recent_table = type { i32, i32, i32, i32*, i32 }

@XT_RECENT_SET = common dso_local global i32 0, align 4
@XT_RECENT_REMOVE = common dso_local global i32 0, align 4
@XT_RECENT_CHECK = common dso_local global i32 0, align 4
@XT_RECENT_UPDATE = common dso_local global i32 0, align 4
@ip_pkt_list_tot = common dso_local global i64 0, align 8
@XT_RECENT_NAME_LEN = common dso_local global i64 0, align 8
@recent_mutex = common dso_local global i32 0, align 4
@ip_list_hash_size = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@recent_lock = common dso_local global i32 0, align 4
@tables = common dso_local global i32 0, align 4
@ip_list_gid = common dso_local global i8* null, align 8
@ip_list_perms = common dso_local global i32 0, align 4
@ip_list_uid = common dso_local global i8* null, align 8
@proc_old_dir = common dso_local global i32 0, align 4
@recent_mt_fops = common dso_local global i32 0, align 4
@recent_old_fops = common dso_local global i32 0, align 4
@recent_proc_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @recent_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recent_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_recent_mtinfo*, align 8
  %5 = alloca %struct.recent_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %8 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %9 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %8, i32 0, i32 0
  %10 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %9, align 8
  store %struct.xt_recent_mtinfo* %10, %struct.xt_recent_mtinfo** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %4, align 8
  %12 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @XT_RECENT_SET, align 4
  %15 = load i32, i32* @XT_RECENT_REMOVE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @XT_RECENT_CHECK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @XT_RECENT_UPDATE, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %13, %20
  %22 = call i32 @hweight8(i32 %21)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %130

25:                                               ; preds = %1
  %26 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %4, align 8
  %27 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @XT_RECENT_SET, align 4
  %30 = load i32, i32* @XT_RECENT_REMOVE, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %4, align 8
  %36 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %4, align 8
  %41 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %34
  store i32 0, i32* %2, align 4
  br label %130

45:                                               ; preds = %39, %25
  %46 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %4, align 8
  %47 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ip_pkt_list_tot, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %130

52:                                               ; preds = %45
  %53 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %4, align 8
  %54 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %52
  %61 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %4, align 8
  %62 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* @XT_RECENT_NAME_LEN, align 8
  %65 = call i64 @strnlen(i8* %63, i64 %64)
  %66 = load i64, i64* @XT_RECENT_NAME_LEN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60, %52
  store i32 0, i32* %2, align 4
  br label %130

69:                                               ; preds = %60
  %70 = call i32 @mutex_lock(i32* @recent_mutex)
  %71 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %4, align 8
  %72 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call %struct.recent_table* @recent_table_lookup(i8* %73)
  store %struct.recent_table* %74, %struct.recent_table** %5, align 8
  %75 = load %struct.recent_table*, %struct.recent_table** %5, align 8
  %76 = icmp ne %struct.recent_table* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load %struct.recent_table*, %struct.recent_table** %5, align 8
  %79 = getelementptr inbounds %struct.recent_table, %struct.recent_table* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  store i32 1, i32* %7, align 4
  br label %127

82:                                               ; preds = %69
  %83 = load i32, i32* @ip_list_hash_size, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 4, %84
  %86 = add i64 32, %85
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call %struct.recent_table* @kzalloc(i32 %87, i32 %88)
  store %struct.recent_table* %89, %struct.recent_table** %5, align 8
  %90 = load %struct.recent_table*, %struct.recent_table** %5, align 8
  %91 = icmp eq %struct.recent_table* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %127

93:                                               ; preds = %82
  %94 = load %struct.recent_table*, %struct.recent_table** %5, align 8
  %95 = getelementptr inbounds %struct.recent_table, %struct.recent_table* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.recent_table*, %struct.recent_table** %5, align 8
  %97 = getelementptr inbounds %struct.recent_table, %struct.recent_table* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %4, align 8
  %100 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcpy(i32 %98, i8* %101)
  %103 = load %struct.recent_table*, %struct.recent_table** %5, align 8
  %104 = getelementptr inbounds %struct.recent_table, %struct.recent_table* %103, i32 0, i32 4
  %105 = call i32 @INIT_LIST_HEAD(i32* %104)
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %118, %93
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @ip_list_hash_size, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load %struct.recent_table*, %struct.recent_table** %5, align 8
  %112 = getelementptr inbounds %struct.recent_table, %struct.recent_table* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = call i32 @INIT_LIST_HEAD(i32* %116)
  br label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %6, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %106

121:                                              ; preds = %106
  %122 = call i32 @spin_lock_bh(i32* @recent_lock)
  %123 = load %struct.recent_table*, %struct.recent_table** %5, align 8
  %124 = getelementptr inbounds %struct.recent_table, %struct.recent_table* %123, i32 0, i32 1
  %125 = call i32 @list_add_tail(i32* %124, i32* @tables)
  %126 = call i32 @spin_unlock_bh(i32* @recent_lock)
  store i32 1, i32* %7, align 4
  br label %127

127:                                              ; preds = %121, %92, %77
  %128 = call i32 @mutex_unlock(i32* @recent_mutex)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %127, %68, %51, %44, %24
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @hweight8(i32) #1

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.recent_table* @recent_table_lookup(i8*) #1

declare dso_local %struct.recent_table* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
