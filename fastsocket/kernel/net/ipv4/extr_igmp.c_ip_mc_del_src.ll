; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_del_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_del_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { i64, i64, i32, %struct.ip_mc_list* }
%struct.ip_mc_list = type { i64, i64*, i64, i32, i32, %struct.ip_sf_list*, i64, %struct.ip_mc_list* }
%struct.ip_sf_list = type { i64, %struct.ip_sf_list* }

@ENODEV = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MCAST_INCLUDE = common dso_local global i64 0, align 8
@IGMP_Unsolicited_Report_Count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_device*, i64*, i32, i32, i64*, i32)* @ip_mc_del_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_mc_del_src(%struct.in_device* %0, i64* %1, i32 %2, i32 %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.in_device*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ip_mc_list*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.in_device* %0, %struct.in_device** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.in_device*, %struct.in_device** %8, align 8
  %20 = icmp ne %struct.in_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %147

24:                                               ; preds = %6
  %25 = load %struct.in_device*, %struct.in_device** %8, align 8
  %26 = getelementptr inbounds %struct.in_device, %struct.in_device* %25, i32 0, i32 2
  %27 = call i32 @read_lock(i32* %26)
  %28 = load %struct.in_device*, %struct.in_device** %8, align 8
  %29 = getelementptr inbounds %struct.in_device, %struct.in_device* %28, i32 0, i32 3
  %30 = load %struct.ip_mc_list*, %struct.ip_mc_list** %29, align 8
  store %struct.ip_mc_list* %30, %struct.ip_mc_list** %14, align 8
  br label %31

31:                                               ; preds = %43, %24
  %32 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %33 = icmp ne %struct.ip_mc_list* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i64*, i64** %9, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %38 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %47

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %45 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %44, i32 0, i32 7
  %46 = load %struct.ip_mc_list*, %struct.ip_mc_list** %45, align 8
  store %struct.ip_mc_list* %46, %struct.ip_mc_list** %14, align 8
  br label %31

47:                                               ; preds = %41, %31
  %48 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %49 = icmp ne %struct.ip_mc_list* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load %struct.in_device*, %struct.in_device** %8, align 8
  %52 = getelementptr inbounds %struct.in_device, %struct.in_device* %51, i32 0, i32 2
  %53 = call i32 @read_unlock(i32* %52)
  %54 = load i32, i32* @ESRCH, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %147

56:                                               ; preds = %47
  %57 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %58 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %57, i32 0, i32 3
  %59 = call i32 @spin_lock_bh(i32* %58)
  %60 = load %struct.in_device*, %struct.in_device** %8, align 8
  %61 = getelementptr inbounds %struct.in_device, %struct.in_device* %60, i32 0, i32 2
  %62 = call i32 @read_unlock(i32* %61)
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %17, align 4
  %68 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %69 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %65
  br label %142

77:                                               ; preds = %65
  %78 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %79 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %77, %56
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %87

87:                                               ; preds = %112, %86
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %87
  %92 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i64*, i64** %12, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = call i32 @ip_mc_del1_src(%struct.ip_mc_list* %92, i32 %93, i64* %97)
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = icmp sgt i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %15, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %91
  %107 = load i32, i32* %18, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* %18, align 4
  store i32 %110, i32* %17, align 4
  br label %111

111:                                              ; preds = %109, %106, %91
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %16, align 4
  br label %87

115:                                              ; preds = %87
  %116 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %117 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MCAST_EXCLUDE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %115
  %122 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %123 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* @MCAST_EXCLUDE, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %121
  %130 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %131 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %130, i32 0, i32 1
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* @MCAST_INCLUDE, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %129
  %138 = load i64, i64* @MCAST_INCLUDE, align 8
  %139 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %140 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %139, i32 0, i32 2
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %137, %129, %121, %115
  br label %142

142:                                              ; preds = %141, %76
  %143 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %144 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %143, i32 0, i32 3
  %145 = call i32 @spin_unlock_bh(i32* %144)
  %146 = load i32, i32* %17, align 4
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %142, %50, %21
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ip_mc_del1_src(%struct.ip_mc_list*, i32, i64*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
