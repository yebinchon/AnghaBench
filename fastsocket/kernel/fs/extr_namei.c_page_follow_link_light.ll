; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_page_follow_link_light.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_page_follow_link_light.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.nameidata = type { i32 }
%struct.page = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @page_follow_link_light(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  store %struct.page* null, %struct.page** %5, align 8
  %6 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = bitcast %struct.page** %5 to i8**
  %9 = call i32 @page_getlink(%struct.dentry* %7, i8** %8)
  %10 = call i32 @nd_set_link(%struct.nameidata* %6, i32 %9)
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = bitcast %struct.page* %11 to i8*
  ret i8* %12
}

declare dso_local i32 @nd_set_link(%struct.nameidata*, i32) #1

declare dso_local i32 @page_getlink(%struct.dentry*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
