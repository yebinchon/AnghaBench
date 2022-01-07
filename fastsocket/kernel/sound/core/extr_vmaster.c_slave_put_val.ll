; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_vmaster.c_slave_put_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_vmaster.c_slave_put_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_slave = type { %struct.TYPE_11__, %struct.TYPE_8__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, %struct.snd_ctl_elem_value*)* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_slave*, %struct.snd_ctl_elem_value*)* @slave_put_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slave_put_val(%struct.link_slave* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.link_slave*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.link_slave* %0, %struct.link_slave** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.link_slave*, %struct.link_slave** %4, align 8
  %10 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %9, i32 0, i32 2
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = call i32 @master_init(%struct.TYPE_12__* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %133

17:                                               ; preds = %2
  %18 = load %struct.link_slave*, %struct.link_slave** %4, align 8
  %19 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %124 [
    i32 129, label %22
    i32 128, label %54
  ]

22:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %50, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.link_slave*, %struct.link_slave** %4, align 8
  %26 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %23
  %31 = load %struct.link_slave*, %struct.link_slave** %4, align 8
  %32 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %31, i32 0, i32 2
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %41 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %39
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %30
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %23

53:                                               ; preds = %23
  br label %124

54:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %120, %54
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.link_slave*, %struct.link_slave** %4, align 8
  %58 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %123

62:                                               ; preds = %55
  %63 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %64 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  %72 = load %struct.link_slave*, %struct.link_slave** %4, align 8
  %73 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %72, i32 0, i32 2
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.link_slave*, %struct.link_slave** %4, align 8
  %78 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %77, i32 0, i32 2
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %76, %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.link_slave*, %struct.link_slave** %4, align 8
  %88 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %62
  %93 = load %struct.link_slave*, %struct.link_slave** %4, align 8
  %94 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %8, align 4
  br label %110

97:                                               ; preds = %62
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.link_slave*, %struct.link_slave** %4, align 8
  %100 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %98, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load %struct.link_slave*, %struct.link_slave** %4, align 8
  %106 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %104, %97
  br label %110

110:                                              ; preds = %109, %92
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %113 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %111, i32* %119, align 4
  br label %120

120:                                              ; preds = %110
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %55

123:                                              ; preds = %55
  br label %124

124:                                              ; preds = %17, %123, %53
  %125 = load %struct.link_slave*, %struct.link_slave** %4, align 8
  %126 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_11__*, %struct.snd_ctl_elem_value*)*, i32 (%struct.TYPE_11__*, %struct.snd_ctl_elem_value*)** %127, align 8
  %129 = load %struct.link_slave*, %struct.link_slave** %4, align 8
  %130 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %129, i32 0, i32 0
  %131 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %132 = call i32 %128(%struct.TYPE_11__* %130, %struct.snd_ctl_elem_value* %131)
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %124, %15
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @master_init(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
