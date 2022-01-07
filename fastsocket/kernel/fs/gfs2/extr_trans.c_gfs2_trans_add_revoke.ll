; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_trans.c_gfs2_trans_add_revoke.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_trans.c_gfs2_trans_add_revoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.gfs2_trans* }
%struct.gfs2_trans = type { i32, i32 }
%struct.gfs2_sbd = type { i32, i32 }
%struct.gfs2_bufdata = type { i32, i32*, i32, i32, %struct.gfs2_glock* }
%struct.gfs2_glock = type { i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@gfs2_revoke_lops = common dso_local global i32 0, align 4
@GLF_LFLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_trans_add_revoke(%struct.gfs2_sbd* %0, %struct.gfs2_bufdata* %1) #0 {
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_bufdata*, align 8
  %5 = alloca %struct.gfs2_glock*, align 8
  %6 = alloca %struct.gfs2_trans*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  store %struct.gfs2_bufdata* %1, %struct.gfs2_bufdata** %4, align 8
  %7 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %4, align 8
  %8 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %7, i32 0, i32 4
  %9 = load %struct.gfs2_glock*, %struct.gfs2_glock** %8, align 8
  store %struct.gfs2_glock* %9, %struct.gfs2_glock** %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.gfs2_trans*, %struct.gfs2_trans** %11, align 8
  store %struct.gfs2_trans* %12, %struct.gfs2_trans** %6, align 8
  %13 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %4, align 8
  %14 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %13, i32 0, i32 0
  %15 = call i32 @list_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %4, align 8
  %21 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %20, i32 0, i32 3
  %22 = call i32 @list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %4, align 8
  %28 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %27, i32 0, i32 2
  %29 = call i32 @list_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %4, align 8
  %35 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %34, i32 0, i32 1
  store i32* @gfs2_revoke_lops, i32** %35, align 8
  %36 = load %struct.gfs2_trans*, %struct.gfs2_trans** %6, align 8
  %37 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.gfs2_trans*, %struct.gfs2_trans** %6, align 8
  %39 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %43 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %47 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %46, i32 0, i32 1
  %48 = call i32 @atomic_inc(i32* %47)
  %49 = load i32, i32* @GLF_LFLUSH, align 4
  %50 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %51 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %50, i32 0, i32 0
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  %53 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %4, align 8
  %54 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %53, i32 0, i32 0
  %55 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %56 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %55, i32 0, i32 0
  %57 = call i32 @list_add(i32* %54, i32* %56)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
