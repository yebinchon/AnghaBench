; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_mld_send_cr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_mld_send_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.ifmcaddr6*, i32, %struct.ifmcaddr6* }
%struct.ifmcaddr6 = type { i64, i64, i32, i64*, %struct.ifmcaddr6*, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@MCAST_INCLUDE = common dso_local global i64 0, align 8
@MLD2_BLOCK_OLD_SOURCES = common dso_local global i32 0, align 4
@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MLD2_CHANGE_TO_INCLUDE = common dso_local global i32 0, align 4
@MLD2_ALLOW_NEW_SOURCES = common dso_local global i32 0, align 4
@MLD2_CHANGE_TO_EXCLUDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_dev*)* @mld_send_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mld_send_cr(%struct.inet6_dev* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  %3 = alloca %struct.ifmcaddr6*, align 8
  %4 = alloca %struct.ifmcaddr6*, align 8
  %5 = alloca %struct.ifmcaddr6*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inet6_dev* %0, %struct.inet6_dev** %2, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %9 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %10 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %9, i32 0, i32 0
  %11 = call i32 @read_lock_bh(i32* %10)
  %12 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %13 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %12, i32 0, i32 2
  %14 = call i32 @write_lock_bh(i32* %13)
  store %struct.ifmcaddr6* null, %struct.ifmcaddr6** %4, align 8
  %15 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %16 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %15, i32 0, i32 3
  %17 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %16, align 8
  store %struct.ifmcaddr6* %17, %struct.ifmcaddr6** %3, align 8
  br label %18

18:                                               ; preds = %111, %1
  %19 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %20 = icmp ne %struct.ifmcaddr6* %19, null
  br i1 %20, label %21, label %113

21:                                               ; preds = %18
  %22 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %23 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %22, i32 0, i32 4
  %24 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %23, align 8
  store %struct.ifmcaddr6* %24, %struct.ifmcaddr6** %5, align 8
  %25 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %26 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MCAST_INCLUDE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %21
  %31 = load i32, i32* @MLD2_BLOCK_OLD_SOURCES, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @MLD2_BLOCK_OLD_SOURCES, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.sk_buff* @add_grec(%struct.sk_buff* %33, %struct.ifmcaddr6* %34, i32 %35, i32 1, i32 0)
  store %struct.sk_buff* %36, %struct.sk_buff** %6, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call %struct.sk_buff* @add_grec(%struct.sk_buff* %37, %struct.ifmcaddr6* %38, i32 %39, i32 1, i32 1)
  store %struct.sk_buff* %40, %struct.sk_buff** %6, align 8
  br label %41

41:                                               ; preds = %30, %21
  %42 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %43 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %41
  %47 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %48 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MCAST_EXCLUDE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* @MLD2_CHANGE_TO_INCLUDE, align 4
  store i32 %53, i32* %7, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.sk_buff* @add_grec(%struct.sk_buff* %54, %struct.ifmcaddr6* %55, i32 %56, i32 1, i32 0)
  store %struct.sk_buff* %57, %struct.sk_buff** %6, align 8
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %60 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %60, align 8
  %63 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %64 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %69 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %68, i32 0, i32 7
  %70 = call i32 @mld_clear_zeros(i32* %69)
  %71 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %72 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %71, i32 0, i32 6
  %73 = call i32 @mld_clear_zeros(i32* %72)
  br label %74

74:                                               ; preds = %67, %58
  br label %75

75:                                               ; preds = %74, %41
  %76 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %77 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %108

80:                                               ; preds = %75
  %81 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %82 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %108, label %85

85:                                               ; preds = %80
  %86 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %87 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %85
  %91 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %92 = icmp ne %struct.ifmcaddr6* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %95 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %96 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %95, i32 0, i32 4
  store %struct.ifmcaddr6* %94, %struct.ifmcaddr6** %96, align 8
  br label %101

97:                                               ; preds = %90
  %98 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %99 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %100 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %99, i32 0, i32 3
  store %struct.ifmcaddr6* %98, %struct.ifmcaddr6** %100, align 8
  br label %101

101:                                              ; preds = %97, %93
  %102 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %103 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @in6_dev_put(i32 %104)
  %106 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %107 = call i32 @kfree(%struct.ifmcaddr6* %106)
  br label %110

108:                                              ; preds = %85, %80, %75
  %109 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  store %struct.ifmcaddr6* %109, %struct.ifmcaddr6** %4, align 8
  br label %110

110:                                              ; preds = %108, %101
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  store %struct.ifmcaddr6* %112, %struct.ifmcaddr6** %3, align 8
  br label %18

113:                                              ; preds = %18
  %114 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %115 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %114, i32 0, i32 2
  %116 = call i32 @write_unlock_bh(i32* %115)
  %117 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %118 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %117, i32 0, i32 1
  %119 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %118, align 8
  store %struct.ifmcaddr6* %119, %struct.ifmcaddr6** %3, align 8
  br label %120

120:                                              ; preds = %176, %113
  %121 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %122 = icmp ne %struct.ifmcaddr6* %121, null
  br i1 %122, label %123, label %180

123:                                              ; preds = %120
  %124 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %125 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %124, i32 0, i32 2
  %126 = call i32 @spin_lock_bh(i32* %125)
  %127 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %128 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %127, i32 0, i32 3
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* @MCAST_EXCLUDE, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %123
  %135 = load i32, i32* @MLD2_BLOCK_OLD_SOURCES, align 4
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* @MLD2_ALLOW_NEW_SOURCES, align 4
  store i32 %136, i32* %8, align 4
  br label %140

137:                                              ; preds = %123
  %138 = load i32, i32* @MLD2_ALLOW_NEW_SOURCES, align 4
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* @MLD2_BLOCK_OLD_SOURCES, align 4
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %137, %134
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call %struct.sk_buff* @add_grec(%struct.sk_buff* %141, %struct.ifmcaddr6* %142, i32 %143, i32 0, i32 0)
  store %struct.sk_buff* %144, %struct.sk_buff** %6, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %146 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call %struct.sk_buff* @add_grec(%struct.sk_buff* %145, %struct.ifmcaddr6* %146, i32 %147, i32 0, i32 1)
  store %struct.sk_buff* %148, %struct.sk_buff** %6, align 8
  %149 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %150 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %140
  %154 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %155 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @MCAST_EXCLUDE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = load i32, i32* @MLD2_CHANGE_TO_EXCLUDE, align 4
  store i32 %160, i32* %7, align 4
  br label %163

161:                                              ; preds = %153
  %162 = load i32, i32* @MLD2_CHANGE_TO_INCLUDE, align 4
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %165 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %166 = load i32, i32* %7, align 4
  %167 = call %struct.sk_buff* @add_grec(%struct.sk_buff* %164, %struct.ifmcaddr6* %165, i32 %166, i32 0, i32 0)
  store %struct.sk_buff* %167, %struct.sk_buff** %6, align 8
  %168 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %169 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, -1
  store i64 %171, i64* %169, align 8
  br label %172

172:                                              ; preds = %163, %140
  %173 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %174 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %173, i32 0, i32 2
  %175 = call i32 @spin_unlock_bh(i32* %174)
  br label %176

176:                                              ; preds = %172
  %177 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %178 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %177, i32 0, i32 4
  %179 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %178, align 8
  store %struct.ifmcaddr6* %179, %struct.ifmcaddr6** %3, align 8
  br label %120

180:                                              ; preds = %120
  %181 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %182 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %181, i32 0, i32 0
  %183 = call i32 @read_unlock_bh(i32* %182)
  %184 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %185 = icmp ne %struct.sk_buff* %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %180
  br label %190

187:                                              ; preds = %180
  %188 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %189 = call i32 @mld_sendpack(%struct.sk_buff* %188)
  br label %190

190:                                              ; preds = %187, %186
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @add_grec(%struct.sk_buff*, %struct.ifmcaddr6*, i32, i32, i32) #1

declare dso_local i32 @mld_clear_zeros(i32*) #1

declare dso_local i32 @in6_dev_put(i32) #1

declare dso_local i32 @kfree(%struct.ifmcaddr6*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @mld_sendpack(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
