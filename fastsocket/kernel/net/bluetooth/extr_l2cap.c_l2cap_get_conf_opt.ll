; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_get_conf_opt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_get_conf_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conf_opt = type { i32, i32, i64 }

@L2CAP_CONF_OPT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"type 0x%2.2x len %d val 0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32*, i64*)* @l2cap_get_conf_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_get_conf_opt(i8** %0, i32* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.l2cap_conf_opt*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.l2cap_conf_opt*
  store %struct.l2cap_conf_opt* %13, %struct.l2cap_conf_opt** %9, align 8
  %14 = load i32, i32* @L2CAP_CONF_OPT_SIZE, align 4
  %15 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %9, align 8
  %16 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %14, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = sext i32 %19 to i64
  %23 = getelementptr i8, i8* %21, i64 %22
  store i8* %23, i8** %20, align 8
  %24 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %9, align 8
  %25 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %9, align 8
  %29 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %9, align 8
  %33 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %58 [
    i32 1, label %35
    i32 2, label %42
    i32 4, label %50
  ]

35:                                               ; preds = %4
  %36 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %9, align 8
  %37 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %8, align 8
  store i64 %40, i64* %41, align 8
  br label %63

42:                                               ; preds = %4
  %43 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %9, align 8
  %44 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @__le16_to_cpu(i32 %47)
  %49 = load i64*, i64** %8, align 8
  store i64 %48, i64* %49, align 8
  br label %63

50:                                               ; preds = %4
  %51 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %9, align 8
  %52 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @__le32_to_cpu(i32 %55)
  %57 = load i64*, i64** %8, align 8
  store i64 %56, i64* %57, align 8
  br label %63

58:                                               ; preds = %4
  %59 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %9, align 8
  %60 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %8, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %58, %50, %42, %35
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %9, align 8
  %67 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68, i64 %70)
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local i64 @__le32_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
