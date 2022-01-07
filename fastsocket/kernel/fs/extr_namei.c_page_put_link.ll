; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_page_put_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_page_put_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.nameidata = type { i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_put_link(%struct.dentry* %0, %struct.nameidata* %1, i8* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.nameidata* %1, %struct.nameidata** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.page*
  store %struct.page* %9, %struct.page** %7, align 8
  %10 = load %struct.page*, %struct.page** %7, align 8
  %11 = icmp ne %struct.page* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.page*, %struct.page** %7, align 8
  %14 = call i32 @kunmap(%struct.page* %13)
  %15 = load %struct.page*, %struct.page** %7, align 8
  %16 = call i32 @page_cache_release(%struct.page* %15)
  br label %17

17:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
