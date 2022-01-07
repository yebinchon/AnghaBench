; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/pstore/extr_platform.c_pstore_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/pstore/extr_platform.c_pstore_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 (i32, i32, i32*, i32, i32, i32, %struct.TYPE_3__*)*, i32 }
%struct.kmsg_dumper = type { i32 }

@psinfo = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [62 x i8] c"pstore dump routine blocked in NMI, may corrupt error record\0A\00", align 1
@oopscount = common dso_local global i32 0, align 4
@kmsg_bytes = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"%s#%d Part%d\0A\00", align 1
@PSTORE_TYPE_DMESG = common dso_local global i32 0, align 4
@KMSG_DUMP_OOPS = common dso_local global i32 0, align 4
@pstore_new_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmsg_dumper*, i32, i8*, i64, i8*, i64)* @pstore_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pstore_dump(%struct.kmsg_dumper* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.kmsg_dumper*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.kmsg_dumper* %0, %struct.kmsg_dumper** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %18, align 8
  store i32 1, i32* %24, align 4
  store i64 0, i64* %25, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @get_reason_str(i32 %27)
  store i8* %28, i8** %20, align 8
  %29 = call i64 (...) @in_nmi()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %6
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = call i32 @spin_trylock(i32* %33)
  store i32 %34, i32* %26, align 4
  %35 = load i32, i32* %26, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %31
  br label %45

40:                                               ; preds = %6
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i64, i64* %25, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  br label %45

45:                                               ; preds = %40, %39
  %46 = load i32, i32* @oopscount, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @oopscount, align 4
  br label %48

48:                                               ; preds = %131, %45
  %49 = load i64, i64* %18, align 8
  %50 = load i64, i64* @kmsg_bytes, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %145

52:                                               ; preds = %48
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %19, align 8
  %56 = load i8*, i8** %19, align 8
  %57 = load i8*, i8** %20, align 8
  %58 = load i32, i32* @oopscount, align 4
  %59 = load i32, i32* %24, align 4
  %60 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %57, i32 %58, i32 %59)
  store i32 %60, i32* %22, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %22, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %17, align 8
  %67 = load i32, i32* %22, align 4
  %68 = load i8*, i8** %19, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %19, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %17, align 8
  %73 = call i64 @min(i64 %71, i64 %72)
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* %16, align 8
  %77 = sub i64 %75, %76
  %78 = call i64 @min(i64 %74, i64 %77)
  store i64 %78, i64* %15, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %16, align 8
  %81 = add i64 %79, %80
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %52
  br label %145

84:                                               ; preds = %52
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %16, align 8
  %87 = sub i64 %85, %86
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %15, align 8
  %90 = sub i64 %88, %89
  store i64 %90, i64* %13, align 8
  %91 = load i8*, i8** %19, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i64, i64* %15, align 8
  %96 = call i32 @memcpy(i8* %91, i8* %94, i64 %95)
  %97 = load i8*, i8** %19, align 8
  %98 = load i64, i64* %15, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8*, i8** %11, align 8
  %101 = load i64, i64* %14, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i64, i64* %16, align 8
  %104 = call i32 @memcpy(i8* %99, i8* %102, i64 %103)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32 (i32, i32, i32*, i32, i32, i32, %struct.TYPE_3__*)*, i32 (i32, i32, i32*, i32, i32, i32, %struct.TYPE_3__*)** %106, align 8
  %108 = load i32, i32* @PSTORE_TYPE_DMESG, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %24, align 4
  %111 = load i32, i32* @oopscount, align 4
  %112 = load i32, i32* %22, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %15, align 8
  %115 = add i64 %113, %114
  %116 = load i64, i64* %16, align 8
  %117 = add i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %120 = call i32 %107(i32 %108, i32 %109, i32* %21, i32 %110, i32 %111, i32 %118, %struct.TYPE_3__* %119)
  store i32 %120, i32* %23, align 4
  %121 = load i32, i32* %23, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %84
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @KMSG_DUMP_OOPS, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = call i64 (...) @pstore_is_mounted()
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 1, i32* @pstore_new_entry, align 4
  br label %131

131:                                              ; preds = %130, %127, %123, %84
  %132 = load i64, i64* %15, align 8
  %133 = load i64, i64* %10, align 8
  %134 = sub i64 %133, %132
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* %16, align 8
  %136 = load i64, i64* %12, align 8
  %137 = sub i64 %136, %135
  store i64 %137, i64* %12, align 8
  %138 = load i64, i64* %15, align 8
  %139 = load i64, i64* %16, align 8
  %140 = add i64 %138, %139
  %141 = load i64, i64* %18, align 8
  %142 = add i64 %141, %140
  store i64 %142, i64* %18, align 8
  %143 = load i32, i32* %24, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %24, align 4
  br label %48

145:                                              ; preds = %83, %48
  %146 = call i64 (...) @in_nmi()
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = load i32, i32* %26, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  %154 = call i32 @spin_unlock(i32* %153)
  br label %155

155:                                              ; preds = %151, %148
  br label %161

156:                                              ; preds = %145
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 3
  %159 = load i64, i64* %25, align 8
  %160 = call i32 @spin_unlock_irqrestore(i32* %158, i64 %159)
  br label %161

161:                                              ; preds = %156, %155
  ret void
}

declare dso_local i8* @get_reason_str(i32) #1

declare dso_local i64 @in_nmi(...) #1

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @pstore_is_mounted(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
