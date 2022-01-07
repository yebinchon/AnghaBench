; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht_debugfs.c_minstrel_ht_add_sta_debugfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht_debugfs.c_minstrel_ht_add_sta_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.minstrel_ht_sta_priv = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"rc_stats\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@minstrel_ht_stat_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @minstrel_ht_add_sta_debugfs(i8* %0, i8* %1, %struct.dentry* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.minstrel_ht_sta_priv*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.minstrel_ht_sta_priv*
  store %struct.minstrel_ht_sta_priv* %9, %struct.minstrel_ht_sta_priv** %7, align 8
  %10 = load i32, i32* @S_IRUGO, align 4
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %7, align 8
  %13 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10, %struct.dentry* %11, %struct.minstrel_ht_sta_priv* %12, i32* @minstrel_ht_stat_fops)
  %14 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %7, align 8
  %15 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  ret void
}

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.minstrel_ht_sta_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
