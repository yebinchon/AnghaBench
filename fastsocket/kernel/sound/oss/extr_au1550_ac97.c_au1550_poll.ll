; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_au1550_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_au1550_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64 }
%struct.poll_table_struct = type { i32 }
%struct.au1550_state = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @au1550_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca %struct.au1550_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.au1550_state*
  store %struct.au1550_state* %12, %struct.au1550_state** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FMODE_WRITE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.au1550_state*, %struct.au1550_state** %6, align 8
  %21 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %145

26:                                               ; preds = %19
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = load %struct.au1550_state*, %struct.au1550_state** %6, align 8
  %29 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %32 = call i32 @poll_wait(%struct.file* %27, i32* %30, %struct.poll_table_struct* %31)
  br label %33

33:                                               ; preds = %26, %2
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FMODE_READ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load %struct.au1550_state*, %struct.au1550_state** %6, align 8
  %42 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %145

47:                                               ; preds = %40
  %48 = load %struct.file*, %struct.file** %4, align 8
  %49 = load %struct.au1550_state*, %struct.au1550_state** %6, align 8
  %50 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %53 = call i32 @poll_wait(%struct.file* %48, i32* %51, %struct.poll_table_struct* %52)
  br label %54

54:                                               ; preds = %47, %33
  %55 = load %struct.au1550_state*, %struct.au1550_state** %6, align 8
  %56 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %55, i32 0, i32 0
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.file*, %struct.file** %4, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FMODE_READ, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %54
  %66 = load %struct.au1550_state*, %struct.au1550_state** %6, align 8
  %67 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.au1550_state*, %struct.au1550_state** %6, align 8
  %71 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = icmp sge i32 %69, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = load i32, i32* @POLLIN, align 4
  %78 = load i32, i32* @POLLRDNORM, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %76, %65
  br label %83

83:                                               ; preds = %82, %54
  %84 = load %struct.file*, %struct.file** %4, align 8
  %85 = getelementptr inbounds %struct.file, %struct.file* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @FMODE_WRITE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %139

90:                                               ; preds = %83
  %91 = load %struct.au1550_state*, %struct.au1550_state** %6, align 8
  %92 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %90
  %97 = load %struct.au1550_state*, %struct.au1550_state** %6, align 8
  %98 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.au1550_state*, %struct.au1550_state** %6, align 8
  %102 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = icmp sge i32 %100, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %96
  %108 = load i32, i32* @POLLOUT, align 4
  %109 = load i32, i32* @POLLWRNORM, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %107, %96
  br label %138

114:                                              ; preds = %90
  %115 = load %struct.au1550_state*, %struct.au1550_state** %6, align 8
  %116 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = load %struct.au1550_state*, %struct.au1550_state** %6, align 8
  %121 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.au1550_state*, %struct.au1550_state** %6, align 8
  %125 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = add nsw i32 %123, %128
  %130 = icmp sge i32 %119, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %114
  %132 = load i32, i32* @POLLOUT, align 4
  %133 = load i32, i32* @POLLWRNORM, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %131, %114
  br label %138

138:                                              ; preds = %137, %113
  br label %139

139:                                              ; preds = %138, %83
  %140 = load %struct.au1550_state*, %struct.au1550_state** %6, align 8
  %141 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %140, i32 0, i32 0
  %142 = load i64, i64* %7, align 8
  %143 = call i32 @spin_unlock_irqrestore(i32* %141, i64 %142)
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %139, %46, %25
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
