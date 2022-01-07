; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_gre.c_nf_ct_gre_keymap_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_gre.c_nf_ct_gre_keymap_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.net = type { i32 }
%struct.netns_proto_gre = type { i32 }
%struct.nf_conn_help = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nf_conn** }

@proto_gre_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"entering for ct %p\0A\00", align 1
@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@IP_CT_DIR_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"removing %p from list\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_ct_gre_keymap_destroy(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.netns_proto_gre*, align 8
  %5 = alloca %struct.nf_conn_help*, align 8
  %6 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %7 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %8 = call %struct.net* @nf_ct_net(%struct.nf_conn* %7)
  store %struct.net* %8, %struct.net** %3, align 8
  %9 = load %struct.net*, %struct.net** %3, align 8
  %10 = load i32, i32* @proto_gre_net_id, align 4
  %11 = call %struct.netns_proto_gre* @net_generic(%struct.net* %9, i32 %10)
  store %struct.netns_proto_gre* %11, %struct.netns_proto_gre** %4, align 8
  %12 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %13 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %12)
  store %struct.nf_conn_help* %13, %struct.nf_conn_help** %5, align 8
  %14 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.nf_conn* %14)
  %16 = load %struct.netns_proto_gre*, %struct.netns_proto_gre** %4, align 8
  %17 = getelementptr inbounds %struct.netns_proto_gre, %struct.netns_proto_gre* %16, i32 0, i32 0
  %18 = call i32 @write_lock_bh(i32* %17)
  %19 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %76, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @IP_CT_DIR_MAX, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %20
  %25 = load %struct.nf_conn_help*, %struct.nf_conn_help** %5, align 8
  %26 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.nf_conn**, %struct.nf_conn*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.nf_conn*, %struct.nf_conn** %29, i64 %31
  %33 = load %struct.nf_conn*, %struct.nf_conn** %32, align 8
  %34 = icmp ne %struct.nf_conn* %33, null
  br i1 %34, label %35, label %75

35:                                               ; preds = %24
  %36 = load %struct.nf_conn_help*, %struct.nf_conn_help** %5, align 8
  %37 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.nf_conn**, %struct.nf_conn*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.nf_conn*, %struct.nf_conn** %40, i64 %42
  %44 = load %struct.nf_conn*, %struct.nf_conn** %43, align 8
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.nf_conn* %44)
  %46 = load %struct.nf_conn_help*, %struct.nf_conn_help** %5, align 8
  %47 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.nf_conn**, %struct.nf_conn*** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.nf_conn*, %struct.nf_conn** %50, i64 %52
  %54 = load %struct.nf_conn*, %struct.nf_conn** %53, align 8
  %55 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %54, i32 0, i32 0
  %56 = call i32 @list_del(i32* %55)
  %57 = load %struct.nf_conn_help*, %struct.nf_conn_help** %5, align 8
  %58 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load %struct.nf_conn**, %struct.nf_conn*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.nf_conn*, %struct.nf_conn** %61, i64 %63
  %65 = load %struct.nf_conn*, %struct.nf_conn** %64, align 8
  %66 = call i32 @kfree(%struct.nf_conn* %65)
  %67 = load %struct.nf_conn_help*, %struct.nf_conn_help** %5, align 8
  %68 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load %struct.nf_conn**, %struct.nf_conn*** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.nf_conn*, %struct.nf_conn** %71, i64 %73
  store %struct.nf_conn* null, %struct.nf_conn** %74, align 8
  br label %75

75:                                               ; preds = %35, %24
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %20

79:                                               ; preds = %20
  %80 = load %struct.netns_proto_gre*, %struct.netns_proto_gre** %4, align 8
  %81 = getelementptr inbounds %struct.netns_proto_gre, %struct.netns_proto_gre* %80, i32 0, i32 0
  %82 = call i32 @write_unlock_bh(i32* %81)
  ret void
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local %struct.netns_proto_gre* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @pr_debug(i8*, %struct.nf_conn*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.nf_conn*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
