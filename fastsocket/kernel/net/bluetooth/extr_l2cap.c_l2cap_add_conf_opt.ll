; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_add_conf_opt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_add_conf_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conf_opt = type { i32, i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"type 0x%2.2x len %d val 0x%lx\00", align 1
@L2CAP_CONF_OPT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, i32, i64)* @l2cap_add_conf_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_add_conf_opt(i8** %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.l2cap_conf_opt*, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.l2cap_conf_opt*
  store %struct.l2cap_conf_opt* %12, %struct.l2cap_conf_opt** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i64 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %9, align 8
  %19 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %9, align 8
  %22 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %45 [
    i32 1, label %24
    i32 2, label %31
    i32 4, label %38
  ]

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %9, align 8
  %28 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32 %26, i32* %30, align 4
  br label %53

31:                                               ; preds = %4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @cpu_to_le16(i64 %32)
  %34 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %9, align 8
  %35 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32 %33, i32* %37, align 4
  br label %53

38:                                               ; preds = %4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @cpu_to_le32(i64 %39)
  %41 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %9, align 8
  %42 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  store i32 %40, i32* %44, align 4
  br label %53

45:                                               ; preds = %4
  %46 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %9, align 8
  %47 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @memcpy(i64 %48, i8* %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %38, %31, %24
  %54 = load i64, i64* @L2CAP_CONF_OPT_SIZE, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load i8**, i8*** %5, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr i8, i8* %59, i64 %57
  store i8* %60, i8** %58, align 8
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32, i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
