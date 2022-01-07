; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_readinode.c_jffs2_free_full_dirent_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_readinode.c_jffs2_free_full_dirent_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_full_dirent = type { %struct.jffs2_full_dirent* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jffs2_full_dirent*)* @jffs2_free_full_dirent_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jffs2_free_full_dirent_list(%struct.jffs2_full_dirent* %0) #0 {
  %2 = alloca %struct.jffs2_full_dirent*, align 8
  %3 = alloca %struct.jffs2_full_dirent*, align 8
  store %struct.jffs2_full_dirent* %0, %struct.jffs2_full_dirent** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %2, align 8
  %6 = icmp ne %struct.jffs2_full_dirent* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %2, align 8
  %9 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %8, i32 0, i32 0
  %10 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %9, align 8
  store %struct.jffs2_full_dirent* %10, %struct.jffs2_full_dirent** %3, align 8
  %11 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %2, align 8
  %12 = call i32 @jffs2_free_full_dirent(%struct.jffs2_full_dirent* %11)
  %13 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %3, align 8
  store %struct.jffs2_full_dirent* %13, %struct.jffs2_full_dirent** %2, align 8
  br label %4

14:                                               ; preds = %4
  ret void
}

declare dso_local i32 @jffs2_free_full_dirent(%struct.jffs2_full_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
