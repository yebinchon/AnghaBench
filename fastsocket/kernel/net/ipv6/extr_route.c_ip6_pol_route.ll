; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_pol_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_pol_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.net = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.rt6_info*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.fib6_table = type { i32, i32 }
%struct.flowi = type { i32, i32 }
%struct.fib6_node = type { i32 }

@RT6_LOOKUP_F_REACHABLE = common dso_local global i32 0, align 4
@RTF_NONEXTHOP = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_IFACE = common dso_local global i32 0, align 4
@RTF_LOCAL = common dso_local global i32 0, align 4
@RTF_CACHE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rt6_info* (%struct.net*, %struct.fib6_table*, i32, %struct.flowi*, i32, i32)* @ip6_pol_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rt6_info* @ip6_pol_route(%struct.net* %0, %struct.fib6_table* %1, i32 %2, %struct.flowi* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.fib6_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.flowi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fib6_node*, align 8
  %14 = alloca %struct.rt6_info*, align 8
  %15 = alloca %struct.rt6_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.fib6_table* %1, %struct.fib6_table** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.flowi* %3, %struct.flowi** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 3, i32* %17, align 4
  %21 = load %struct.net*, %struct.net** %7, align 8
  %22 = getelementptr inbounds %struct.net, %struct.net* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  br label %31

29:                                               ; preds = %6
  %30 = load i32, i32* @RT6_LOOKUP_F_REACHABLE, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ 0, %28 ], [ %30, %29 ]
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* @RTF_NONEXTHOP, align 4
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %16, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load i32, i32* @RTF_LOCAL, align 4
  %43 = load i32, i32* %20, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %20, align 4
  br label %45

45:                                               ; preds = %41, %31
  br label %46

46:                                               ; preds = %143, %45
  %47 = load %struct.fib6_table*, %struct.fib6_table** %8, align 8
  %48 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %47, i32 0, i32 0
  %49 = call i32 @read_lock_bh(i32* %48)
  br label %50

50:                                               ; preds = %151, %46
  %51 = load %struct.fib6_table*, %struct.fib6_table** %8, align 8
  %52 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %51, i32 0, i32 1
  %53 = load %struct.flowi*, %struct.flowi** %10, align 8
  %54 = getelementptr inbounds %struct.flowi, %struct.flowi* %53, i32 0, i32 0
  %55 = load %struct.flowi*, %struct.flowi** %10, align 8
  %56 = getelementptr inbounds %struct.flowi, %struct.flowi* %55, i32 0, i32 1
  %57 = call %struct.fib6_node* @fib6_lookup(i32* %52, i32* %54, i32* %56)
  store %struct.fib6_node* %57, %struct.fib6_node** %13, align 8
  br label %58

58:                                               ; preds = %50
  %59 = load %struct.fib6_node*, %struct.fib6_node** %13, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %19, align 4
  %63 = or i32 %61, %62
  %64 = call %struct.rt6_info* @rt6_select(%struct.fib6_node* %59, i32 %60, i32 %63)
  store %struct.rt6_info* %64, %struct.rt6_info** %14, align 8
  %65 = load %struct.net*, %struct.net** %7, align 8
  %66 = load %struct.flowi*, %struct.flowi** %10, align 8
  %67 = getelementptr inbounds %struct.flowi, %struct.flowi* %66, i32 0, i32 1
  %68 = call i32 @BACKTRACK(%struct.net* %65, i32* %67)
  %69 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %70 = load %struct.net*, %struct.net** %7, align 8
  %71 = getelementptr inbounds %struct.net, %struct.net* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.rt6_info*, %struct.rt6_info** %72, align 8
  %74 = icmp eq %struct.rt6_info* %69, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %58
  %76 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %77 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RTF_CACHE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75, %58
  br label %148

83:                                               ; preds = %75
  %84 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %85 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = call i32 @dst_hold(%struct.TYPE_9__* %86)
  %88 = load %struct.fib6_table*, %struct.fib6_table** %8, align 8
  %89 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %88, i32 0, i32 0
  %90 = call i32 @read_unlock_bh(i32* %89)
  %91 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %92 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %83
  %96 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %97 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %20, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %104 = load %struct.flowi*, %struct.flowi** %10, align 8
  %105 = getelementptr inbounds %struct.flowi, %struct.flowi* %104, i32 0, i32 0
  %106 = load %struct.flowi*, %struct.flowi** %10, align 8
  %107 = getelementptr inbounds %struct.flowi, %struct.flowi* %106, i32 0, i32 1
  %108 = call %struct.rt6_info* @rt6_alloc_cow(%struct.rt6_info* %103, i32* %105, i32* %107)
  store %struct.rt6_info* %108, %struct.rt6_info** %15, align 8
  br label %110

109:                                              ; preds = %95, %83
  br label %160

110:                                              ; preds = %102
  %111 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %112 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = call i32 @dst_release(%struct.TYPE_9__* %113)
  %115 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  %116 = icmp ne %struct.rt6_info* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %123

118:                                              ; preds = %110
  %119 = load %struct.net*, %struct.net** %7, align 8
  %120 = getelementptr inbounds %struct.net, %struct.net* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load %struct.rt6_info*, %struct.rt6_info** %121, align 8
  br label %123

123:                                              ; preds = %118, %117
  %124 = phi %struct.rt6_info* [ %115, %117 ], [ %122, %118 ]
  store %struct.rt6_info* %124, %struct.rt6_info** %14, align 8
  %125 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %126 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = call i32 @dst_hold(%struct.TYPE_9__* %127)
  %129 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  %130 = icmp ne %struct.rt6_info* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %123
  %132 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  %133 = call i32 @ip6_ins_rt(%struct.rt6_info* %132)
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %18, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %131
  br label %160

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %123
  %139 = load i32, i32* %17, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %17, align 4
  %141 = icmp sle i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %160

143:                                              ; preds = %138
  %144 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %145 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = call i32 @dst_release(%struct.TYPE_9__* %146)
  br label %46

148:                                              ; preds = %82
  %149 = load i32, i32* %19, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 0, i32* %19, align 4
  br label %50

152:                                              ; preds = %148
  %153 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %154 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = call i32 @dst_hold(%struct.TYPE_9__* %155)
  %157 = load %struct.fib6_table*, %struct.fib6_table** %8, align 8
  %158 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %157, i32 0, i32 0
  %159 = call i32 @read_unlock_bh(i32* %158)
  br label %160

160:                                              ; preds = %152, %142, %136, %109
  %161 = load i32, i32* @jiffies, align 4
  %162 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %163 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  store i32 %161, i32* %165, align 4
  %166 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %167 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  ret %struct.rt6_info* %172
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.fib6_node* @fib6_lookup(i32*, i32*, i32*) #1

declare dso_local %struct.rt6_info* @rt6_select(%struct.fib6_node*, i32, i32) #1

declare dso_local i32 @BACKTRACK(%struct.net*, i32*) #1

declare dso_local i32 @dst_hold(%struct.TYPE_9__*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local %struct.rt6_info* @rt6_alloc_cow(%struct.rt6_info*, i32*, i32*) #1

declare dso_local i32 @dst_release(%struct.TYPE_9__*) #1

declare dso_local i32 @ip6_ins_rt(%struct.rt6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
