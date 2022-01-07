; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_add_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_add_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { i64, i64, i32, %struct.ip_mc_list* }
%struct.ip_mc_list = type { i64, i64, i64*, i32, %struct.ip_sf_list*, i64, %struct.in_device*, %struct.ip_mc_list* }
%struct.ip_sf_list = type { i64, %struct.ip_sf_list* }

@ENODEV = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MCAST_INCLUDE = common dso_local global i64 0, align 8
@IGMP_Unsolicited_Report_Count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_device*, i64*, i32, i32, i64*, i32)* @ip_mc_add_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_mc_add_src(%struct.in_device* %0, i64* %1, i32 %2, i32 %3, i64* %4, i32 %5) #0 {
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
  %19 = load %struct.in_device*, %struct.in_device** %8, align 8
  %20 = icmp ne %struct.in_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %172

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
  br label %172

56:                                               ; preds = %47
  %57 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %58 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %57, i32 0, i32 3
  %59 = call i32 @spin_lock_bh(i32* %58)
  %60 = load %struct.in_device*, %struct.in_device** %8, align 8
  %61 = getelementptr inbounds %struct.in_device, %struct.in_device* %60, i32 0, i32 2
  %62 = call i32 @read_unlock(i32* %61)
  %63 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %64 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MCAST_EXCLUDE, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %56
  %72 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %73 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %71, %56
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %81

81:                                               ; preds = %98, %80
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i64*, i64** %12, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @ip_mc_add1_src(%struct.ip_mc_list* %86, i32 %87, i64* %91, i32 %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %101

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %81

101:                                              ; preds = %96, %81
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %129

104:                                              ; preds = %101
  %105 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %106 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %105, i32 0, i32 2
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, -1
  store i64 %112, i64* %110, align 8
  store i32 0, i32* %18, align 4
  br label %113

113:                                              ; preds = %125, %104
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i64*, i64** %12, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = call i32 @ip_mc_del1_src(%struct.ip_mc_list* %118, i32 %119, i64* %123)
  br label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %18, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %18, align 4
  br label %113

128:                                              ; preds = %113
  br label %167

129:                                              ; preds = %101
  %130 = load i32, i32* %15, align 4
  %131 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %132 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %131, i32 0, i32 2
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* @MCAST_EXCLUDE, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  %138 = zext i1 %137 to i32
  %139 = icmp ne i32 %130, %138
  br i1 %139, label %140, label %166

140:                                              ; preds = %129
  %141 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %142 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %141, i32 0, i32 2
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* @MCAST_EXCLUDE, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %140
  %149 = load i64, i64* @MCAST_EXCLUDE, align 8
  %150 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %151 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  br label %165

152:                                              ; preds = %140
  %153 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %154 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %153, i32 0, i32 2
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* @MCAST_INCLUDE, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %152
  %161 = load i64, i64* @MCAST_INCLUDE, align 8
  %162 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %163 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %162, i32 0, i32 1
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %160, %152
  br label %165

165:                                              ; preds = %164, %148
  br label %166

166:                                              ; preds = %165, %129
  br label %167

167:                                              ; preds = %166, %128
  %168 = load %struct.ip_mc_list*, %struct.ip_mc_list** %14, align 8
  %169 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %168, i32 0, i32 3
  %170 = call i32 @spin_unlock_bh(i32* %169)
  %171 = load i32, i32* %17, align 4
  store i32 %171, i32* %7, align 4
  br label %172

172:                                              ; preds = %167, %50, %21
  %173 = load i32, i32* %7, align 4
  ret i32 %173
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ip_mc_add1_src(%struct.ip_mc_list*, i32, i64*, i32) #1

declare dso_local i32 @ip_mc_del1_src(%struct.ip_mc_list*, i32, i64*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
