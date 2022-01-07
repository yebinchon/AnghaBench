; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ip6_mc_add_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ip6_mc_add_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, i32, i32, %struct.ifmcaddr6* }
%struct.ifmcaddr6 = type { i64, i64*, i32, %struct.ip6_sf_list*, i32, i32, %struct.ifmcaddr6* }
%struct.ip6_sf_list = type { i64, %struct.ip6_sf_list* }
%struct.in6_addr = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MCAST_INCLUDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet6_dev*, %struct.in6_addr*, i32, i32, %struct.in6_addr*, i32)* @ip6_mc_add_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_mc_add_src(%struct.inet6_dev* %0, %struct.in6_addr* %1, i32 %2, i32 %3, %struct.in6_addr* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet6_dev*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ifmcaddr6*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ip6_sf_list*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %8, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.in6_addr* %4, %struct.in6_addr** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %21 = icmp ne %struct.inet6_dev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %212

25:                                               ; preds = %6
  %26 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %27 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %26, i32 0, i32 0
  %28 = call i32 @read_lock_bh(i32* %27)
  %29 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %30 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %29, i32 0, i32 3
  %31 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %30, align 8
  store %struct.ifmcaddr6* %31, %struct.ifmcaddr6** %14, align 8
  br label %32

32:                                               ; preds = %43, %25
  %33 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %34 = icmp ne %struct.ifmcaddr6* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %37 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %38 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %37, i32 0, i32 5
  %39 = call i64 @ipv6_addr_equal(%struct.in6_addr* %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %47

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %45 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %44, i32 0, i32 6
  %46 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %45, align 8
  store %struct.ifmcaddr6* %46, %struct.ifmcaddr6** %14, align 8
  br label %32

47:                                               ; preds = %41, %32
  %48 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %49 = icmp ne %struct.ifmcaddr6* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %52 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %51, i32 0, i32 0
  %53 = call i32 @read_unlock_bh(i32* %52)
  %54 = load i32, i32* @ESRCH, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %212

56:                                               ; preds = %47
  %57 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %58 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %57, i32 0, i32 2
  %59 = call i32 @spin_lock_bh(i32* %58)
  %60 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %61 = call i32 @sf_markstate(%struct.ifmcaddr6* %60)
  %62 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %63 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MCAST_EXCLUDE, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %56
  %71 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %72 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  br label %79

79:                                               ; preds = %70, %56
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %80

80:                                               ; preds = %97, %79
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %87, i64 %89
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @ip6_mc_add1_src(%struct.ifmcaddr6* %85, i32 %86, %struct.in6_addr* %90, i32 %91)
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %100

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %80

100:                                              ; preds = %95, %80
  %101 = load i32, i32* %17, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %132

103:                                              ; preds = %100
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %103
  %107 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %108 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, -1
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %106, %103
  store i32 0, i32* %18, align 4
  br label %116

116:                                              ; preds = %128, %115
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %123, i64 %125
  %127 = call i32 @ip6_mc_del1_src(%struct.ifmcaddr6* %121, i32 %122, %struct.in6_addr* %126)
  br label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %18, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %18, align 4
  br label %116

131:                                              ; preds = %116
  br label %204

132:                                              ; preds = %100
  %133 = load i32, i32* %15, align 4
  %134 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %135 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* @MCAST_EXCLUDE, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  %141 = zext i1 %140 to i32
  %142 = icmp ne i32 %133, %141
  br i1 %142, label %143, label %195

143:                                              ; preds = %132
  %144 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %145 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %144, i32 0, i32 1
  %146 = load i64*, i64** %145, align 8
  %147 = load i64, i64* @MCAST_EXCLUDE, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = load i64, i64* @MCAST_EXCLUDE, align 8
  %153 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %154 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  br label %168

155:                                              ; preds = %143
  %156 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %157 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %156, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  %159 = load i64, i64* @MCAST_INCLUDE, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %155
  %164 = load i64, i64* @MCAST_INCLUDE, align 8
  %165 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %166 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %163, %155
  br label %168

168:                                              ; preds = %167, %151
  %169 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %170 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %173 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  %174 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %175 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %178 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %180 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %179, i32 0, i32 3
  %181 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %180, align 8
  store %struct.ip6_sf_list* %181, %struct.ip6_sf_list** %19, align 8
  br label %182

182:                                              ; preds = %188, %168
  %183 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %19, align 8
  %184 = icmp ne %struct.ip6_sf_list* %183, null
  br i1 %184, label %185, label %192

185:                                              ; preds = %182
  %186 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %19, align 8
  %187 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %186, i32 0, i32 0
  store i64 0, i64* %187, align 8
  br label %188

188:                                              ; preds = %185
  %189 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %19, align 8
  %190 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %189, i32 0, i32 1
  %191 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %190, align 8
  store %struct.ip6_sf_list* %191, %struct.ip6_sf_list** %19, align 8
  br label %182

192:                                              ; preds = %182
  %193 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %194 = call i32 @mld_ifc_event(%struct.inet6_dev* %193)
  br label %203

195:                                              ; preds = %132
  %196 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %197 = call i64 @sf_setstate(%struct.ifmcaddr6* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %201 = call i32 @mld_ifc_event(%struct.inet6_dev* %200)
  br label %202

202:                                              ; preds = %199, %195
  br label %203

203:                                              ; preds = %202, %192
  br label %204

204:                                              ; preds = %203, %131
  %205 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  %206 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %205, i32 0, i32 2
  %207 = call i32 @spin_unlock_bh(i32* %206)
  %208 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %209 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %208, i32 0, i32 0
  %210 = call i32 @read_unlock_bh(i32* %209)
  %211 = load i32, i32* %17, align 4
  store i32 %211, i32* %7, align 4
  br label %212

212:                                              ; preds = %204, %50, %22
  %213 = load i32, i32* %7, align 4
  ret i32 %213
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @sf_markstate(%struct.ifmcaddr6*) #1

declare dso_local i32 @ip6_mc_add1_src(%struct.ifmcaddr6*, i32, %struct.in6_addr*, i32) #1

declare dso_local i32 @ip6_mc_del1_src(%struct.ifmcaddr6*, i32, %struct.in6_addr*) #1

declare dso_local i32 @mld_ifc_event(%struct.inet6_dev*) #1

declare dso_local i64 @sf_setstate(%struct.ifmcaddr6*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
