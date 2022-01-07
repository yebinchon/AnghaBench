; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wimax/extr_stack.c_wimax_gnl_re_state_change_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wimax/extr_stack.c_wimax_gnl_re_state_change_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.wimax_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"(wimax_dev %p new_state %u old_state %u)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"RE_STCH: can't create message\0A\00", align 1
@wimax_gnl_mcg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@wimax_gnl_family = common dso_local global i32 0, align 4
@WIMAX_GNL_RE_STATE_CHANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"RE_STCH: can't put data into message\0A\00", align 1
@WIMAX_GNL_STCH_STATE_OLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"RE_STCH: Error adding OLD attr: %d\0A\00", align 1
@WIMAX_GNL_STCH_STATE_NEW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"RE_STCH: Error adding NEW attr: %d\0A\00", align 1
@WIMAX_GNL_STCH_IFIDX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"RE_STCH: Error adding IFINDEX attribute\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"(wimax_dev %p new_state %u old_state %u) = %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"(wimax_dev %p new_state %u old_state %u) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.wimax_dev*, i32, i32, i8**)* @wimax_gnl_re_state_change_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @wimax_gnl_re_state_change_alloc(%struct.wimax_dev* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.wimax_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.wimax_dev* %0, %struct.wimax_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %14 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %15 = call %struct.device* @wimax_dev_to_dev(%struct.wimax_dev* %14)
  store %struct.device* %15, %struct.device** %11, align 8
  %16 = load %struct.device*, %struct.device** %11, align 8
  %17 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @d_fnstart(i32 3, %struct.device* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %17, i32 %18, i32 %19)
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.sk_buff* @nlmsg_new(i32 %23, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %13, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %27 = icmp eq %struct.sk_buff* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load %struct.device*, %struct.device** %11, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %91

31:                                               ; preds = %4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wimax_gnl_mcg, i32 0, i32 0), align 4
  %34 = load i32, i32* @WIMAX_GNL_RE_STATE_CHANGE, align 4
  %35 = call i8* @genlmsg_put(%struct.sk_buff* %32, i32 0, i32 %33, i32* @wimax_gnl_family, i32 0, i32 %34)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.device*, %struct.device** %11, align 8
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %88

41:                                               ; preds = %31
  %42 = load i8*, i8** %12, align 8
  %43 = load i8**, i8*** %9, align 8
  store i8* %42, i8** %43, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %45 = load i32, i32* @WIMAX_GNL_STCH_STATE_OLD, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @nla_put_u8(%struct.sk_buff* %44, i32 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.device*, %struct.device** %11, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %88

54:                                               ; preds = %41
  %55 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %56 = load i32, i32* @WIMAX_GNL_STCH_STATE_NEW, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @nla_put_u8(%struct.sk_buff* %55, i32 %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.device*, %struct.device** %11, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  br label %88

65:                                               ; preds = %54
  %66 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %67 = load i32, i32* @WIMAX_GNL_STCH_IFIDX, align 4
  %68 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %69 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @nla_put_u32(%struct.sk_buff* %66, i32 %67, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load %struct.device*, %struct.device** %11, align 8
  %78 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %88

79:                                               ; preds = %65
  %80 = load %struct.device*, %struct.device** %11, align 8
  %81 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %85 = ptrtoint %struct.sk_buff* %84 to i32
  %86 = call i32 @d_fnend(i32 3, %struct.device* %80, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), %struct.wimax_dev* %81, i32 %82, i32 %83, i32 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %87, %struct.sk_buff** %5, align 8
  br label %100

88:                                               ; preds = %76, %61, %50, %38
  %89 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %90 = call i32 @nlmsg_free(%struct.sk_buff* %89)
  br label %91

91:                                               ; preds = %88, %28
  %92 = load %struct.device*, %struct.device** %11, align 8
  %93 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @d_fnend(i32 3, %struct.device* %92, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), %struct.wimax_dev* %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = call %struct.sk_buff* @ERR_PTR(i32 %98)
  store %struct.sk_buff* %99, %struct.sk_buff** %5, align 8
  br label %100

100:                                              ; preds = %91, %79
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %101
}

declare dso_local %struct.device* @wimax_dev_to_dev(%struct.wimax_dev*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.wimax_dev*, i32, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.wimax_dev*, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
