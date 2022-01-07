; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdebug.c___dlm_print_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdebug.c___dlm_print_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock = type { i32, i64, i64, i64, i64, i64, i32, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [151 x i8] c"    type=%d, conv=%d, node=%u, cookie=%u:%llu, ref=%u, ast=(empty=%c,pend=%c), bast=(empty=%c,pend=%c), pending=(conv=%c,lock=%c,cancel=%c,unlock=%c)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_lock*)* @__dlm_print_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dlm_print_lock(%struct.dlm_lock* %0) #0 {
  %2 = alloca %struct.dlm_lock*, align 8
  store %struct.dlm_lock* %0, %struct.dlm_lock** %2, align 8
  %3 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %4 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %3, i32 0, i32 0
  %5 = call i32 @spin_lock(i32* %4)
  %6 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %7 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %6, i32 0, i32 10
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %11 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %10, i32 0, i32 10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %15 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %14, i32 0, i32 10
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %19 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %18, i32 0, i32 10
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @be64_to_cpu(i32 %21)
  %23 = call i32 @dlm_get_lock_cookie_node(i32 %22)
  %24 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %25 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %24, i32 0, i32 10
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @be64_to_cpu(i32 %27)
  %29 = call i32 @dlm_get_lock_cookie_seq(i32 %28)
  %30 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %31 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %30, i32 0, i32 9
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @atomic_read(i32* %32)
  %34 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %35 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %34, i32 0, i32 8
  %36 = call i64 @list_empty(i32* %35)
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 121, i32 110
  %40 = trunc i32 %39 to i8
  %41 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %42 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 121, i32 110
  %47 = trunc i32 %46 to i8
  %48 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %49 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %48, i32 0, i32 6
  %50 = call i64 @list_empty(i32* %49)
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 121, i32 110
  %54 = trunc i32 %53 to i8
  %55 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %56 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 121, i32 110
  %61 = trunc i32 %60 to i8
  %62 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %63 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 121, i32 110
  %68 = trunc i32 %67 to i8
  %69 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %70 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 121, i32 110
  %75 = trunc i32 %74 to i8
  %76 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %77 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 121, i32 110
  %82 = trunc i32 %81 to i8
  %83 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %84 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 121, i32 110
  %89 = trunc i32 %88 to i8
  %90 = call i32 @printk(i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13, i32 %17, i32 %23, i32 %29, i32 %33, i8 signext %40, i8 signext %47, i8 signext %54, i8 signext %61, i8 signext %68, i8 signext %75, i8 signext %82, i8 signext %89)
  %91 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %92 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock(i32* %92)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i32, i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @dlm_get_lock_cookie_node(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @dlm_get_lock_cookie_seq(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
