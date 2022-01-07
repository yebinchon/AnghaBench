; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_is_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_is_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i32, i64, i32* }
%struct.ip6_sf_list = type { i32, i32*, i32 }

@MAF_GSQUERY = common dso_local global i32 0, align 4
@MCAST_INCLUDE = common dso_local global i64 0, align 8
@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifmcaddr6*, %struct.ip6_sf_list*, i32, i32, i32)* @is_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_in(%struct.ifmcaddr6* %0, %struct.ip6_sf_list* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifmcaddr6*, align 8
  %8 = alloca %struct.ip6_sf_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %7, align 8
  store %struct.ip6_sf_list* %1, %struct.ip6_sf_list** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  switch i32 %12, label %177 [
    i32 128, label %13
    i32 129, label %13
    i32 130, label %67
    i32 131, label %83
    i32 133, label %122
    i32 132, label %140
  ]

13:                                               ; preds = %5, %5
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13
  store i32 0, i32* %6, align 4
  br label %178

20:                                               ; preds = %16
  %21 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %7, align 8
  %22 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MAF_GSQUERY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %29 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %27, %20
  %33 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %7, align 8
  %34 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MCAST_INCLUDE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %178

39:                                               ; preds = %32
  %40 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %41 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @MCAST_INCLUDE, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 128
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %6, align 4
  br label %178

51:                                               ; preds = %39
  %52 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %7, align 8
  %53 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @MCAST_EXCLUDE, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %59 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @MCAST_EXCLUDE, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %57, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %6, align 4
  br label %178

66:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %178

67:                                               ; preds = %5
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %67
  store i32 0, i32* %6, align 4
  br label %178

74:                                               ; preds = %70
  %75 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %76 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @MCAST_INCLUDE, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %6, align 4
  br label %178

83:                                               ; preds = %5
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %83
  store i32 0, i32* %6, align 4
  br label %178

90:                                               ; preds = %86
  %91 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %7, align 8
  %92 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @MCAST_EXCLUDE, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %90
  %99 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %100 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @MCAST_INCLUDE, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98, %90
  store i32 0, i32* %6, align 4
  br label %178

107:                                              ; preds = %98
  %108 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %7, align 8
  %109 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @MCAST_EXCLUDE, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %115 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @MCAST_EXCLUDE, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %113, %119
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %6, align 4
  br label %178

122:                                              ; preds = %5
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %127 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125, %122
  store i32 0, i32* %6, align 4
  br label %178

131:                                              ; preds = %125
  %132 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %7, align 8
  %133 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @MCAST_INCLUDE, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %11, align 4
  %139 = xor i32 %137, %138
  store i32 %139, i32* %6, align 4
  br label %178

140:                                              ; preds = %5
  %141 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %7, align 8
  %142 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @MCAST_INCLUDE, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %162

146:                                              ; preds = %140
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %146
  %150 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %151 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br label %157

157:                                              ; preds = %154, %149
  %158 = phi i1 [ false, %149 ], [ %156, %154 ]
  br label %159

159:                                              ; preds = %157, %146
  %160 = phi i1 [ true, %146 ], [ %158, %157 ]
  %161 = zext i1 %160 to i32
  store i32 %161, i32* %6, align 4
  br label %178

162:                                              ; preds = %140
  %163 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %164 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  br label %174

174:                                              ; preds = %170, %167, %162
  %175 = phi i1 [ false, %167 ], [ false, %162 ], [ %173, %170 ]
  %176 = zext i1 %175 to i32
  store i32 %176, i32* %6, align 4
  br label %178

177:                                              ; preds = %5
  store i32 0, i32* %6, align 4
  br label %178

178:                                              ; preds = %177, %174, %159, %131, %130, %107, %106, %89, %74, %73, %66, %51, %47, %38, %19
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
