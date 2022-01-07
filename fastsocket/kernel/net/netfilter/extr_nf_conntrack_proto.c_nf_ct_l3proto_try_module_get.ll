; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto.c_nf_ct_l3proto_try_module_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto.c_nf_ct_l3proto_try_module_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_l3proto = type { i32 }

@nf_conntrack_l3proto_generic = common dso_local global %struct.nf_conntrack_l3proto zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"nf_conntrack-%d\00", align 1
@EPROTOTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_ct_l3proto_try_module_get(i16 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_conntrack_l3proto*, align 8
  store i16 %0, i16* %3, align 2
  br label %6

6:                                                ; preds = %16, %1
  %7 = load i16, i16* %3, align 2
  %8 = call %struct.nf_conntrack_l3proto* @nf_ct_l3proto_find_get(i16 zeroext %7)
  store %struct.nf_conntrack_l3proto* %8, %struct.nf_conntrack_l3proto** %5, align 8
  %9 = load %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l3proto** %5, align 8
  %10 = icmp eq %struct.nf_conntrack_l3proto* %9, @nf_conntrack_l3proto_generic
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load i16, i16* %3, align 2
  %13 = call i32 @request_module(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i16 zeroext %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %6

17:                                               ; preds = %11
  %18 = load i32, i32* @EPROTOTYPE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %21

20:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.nf_conntrack_l3proto* @nf_ct_l3proto_find_get(i16 zeroext) #1

declare dso_local i32 @request_module(i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
