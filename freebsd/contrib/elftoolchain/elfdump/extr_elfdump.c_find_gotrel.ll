; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_find_gotrel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_find_gotrel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i64, %struct.section* }
%struct.section = type { i64, i64, i64, i32, i32, i32 }
%struct.rel_entry = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64 }

@SHT_REL = common dso_local global i64 0, align 8
@SHT_RELA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"gelf_getrel failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*, %struct.section*, %struct.rel_entry*)* @find_gotrel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_gotrel(%struct.elfdump* %0, %struct.section* %1, %struct.rel_entry* %2) #0 {
  %4 = alloca %struct.elfdump*, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca %struct.rel_entry*, align 8
  %7 = alloca %struct.section*, align 8
  %8 = alloca %struct.rel_entry, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.elfdump* %0, %struct.elfdump** %4, align 8
  store %struct.section* %1, %struct.section** %5, align 8
  store %struct.rel_entry* %2, %struct.rel_entry** %6, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %169, %3
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.elfdump*, %struct.elfdump** %4, align 8
  %18 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %172

21:                                               ; preds = %15
  %22 = load %struct.elfdump*, %struct.elfdump** %4, align 8
  %23 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %22, i32 0, i32 1
  %24 = load %struct.section*, %struct.section** %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds %struct.section, %struct.section* %24, i64 %25
  store %struct.section* %26, %struct.section** %7, align 8
  %27 = load %struct.section*, %struct.section** %7, align 8
  %28 = getelementptr inbounds %struct.section, %struct.section* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SHT_REL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load %struct.section*, %struct.section** %7, align 8
  %34 = getelementptr inbounds %struct.section, %struct.section* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SHT_RELA, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %169

39:                                               ; preds = %32, %21
  %40 = call i32 (...) @elf_errno()
  %41 = load %struct.section*, %struct.section** %7, align 8
  %42 = getelementptr inbounds %struct.section, %struct.section* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.TYPE_9__* @elf_getdata(i32 %43, i32* null)
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %9, align 8
  %45 = icmp eq %struct.TYPE_9__* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = call i32 (...) @elf_errno()
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @elf_errmsg(i32 %51)
  %53 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  br label %172

55:                                               ; preds = %39
  %56 = call i32 @memset(%struct.rel_entry* %8, i32 0, i32 40)
  %57 = load %struct.section*, %struct.section** %7, align 8
  %58 = getelementptr inbounds %struct.section, %struct.section* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %8, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.section*, %struct.section** %7, align 8
  %65 = getelementptr inbounds %struct.section, %struct.section* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.section*, %struct.section** %7, align 8
  %71 = call i32 @get_ent_count(%struct.section* %70, i32* %14)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %55
  br label %172

74:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %165, %74
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %168

79:                                               ; preds = %75
  %80 = load %struct.section*, %struct.section** %7, align 8
  %81 = getelementptr inbounds %struct.section, %struct.section* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SHT_REL, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %87 = load i32, i32* %12, align 4
  %88 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %8, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = call %struct.TYPE_10__* @gelf_getrel(%struct.TYPE_9__* %86, i32 %87, %struct.TYPE_10__* %89)
  %91 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %8, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = icmp ne %struct.TYPE_10__* %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = call i32 @elf_errmsg(i32 -1)
  %96 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %165

97:                                               ; preds = %85
  br label %111

98:                                               ; preds = %79
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %100 = load i32, i32* %12, align 4
  %101 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %8, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = call i32* @gelf_getrela(%struct.TYPE_9__* %99, i32 %100, i32* %102)
  %104 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %8, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = icmp ne i32* %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = call i32 @elf_errmsg(i32 -1)
  %109 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  br label %165

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %97
  %112 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %8, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.section*, %struct.section** %5, align 8
  %117 = getelementptr inbounds %struct.section, %struct.section* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp sge i64 %115, %118
  br i1 %119, label %120, label %164

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %8, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.section*, %struct.section** %5, align 8
  %126 = getelementptr inbounds %struct.section, %struct.section* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.section*, %struct.section** %5, align 8
  %129 = getelementptr inbounds %struct.section, %struct.section* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %127, %130
  %132 = icmp slt i64 %124, %131
  br i1 %132, label %133, label %164

133:                                              ; preds = %120
  %134 = load %struct.elfdump*, %struct.elfdump** %4, align 8
  %135 = load %struct.section*, %struct.section** %7, align 8
  %136 = getelementptr inbounds %struct.section, %struct.section* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %8, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @GELF_R_SYM(i32 %141)
  %143 = call i32 @get_symbol_name(%struct.elfdump* %134, i32 %137, i32 %142)
  %144 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %8, i32 0, i32 2
  store i32 %143, i32* %144, align 8
  %145 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %8, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.section*, %struct.section** %5, align 8
  %150 = getelementptr inbounds %struct.section, %struct.section* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %148, %151
  %153 = load %struct.section*, %struct.section** %5, align 8
  %154 = getelementptr inbounds %struct.section, %struct.section* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = sdiv i64 %152, %156
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %13, align 4
  %159 = load %struct.rel_entry*, %struct.rel_entry** %6, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %159, i64 %161
  %163 = call i32 @memcpy(%struct.rel_entry* %162, %struct.rel_entry* %8, i32 40)
  br label %164

164:                                              ; preds = %133, %120, %111
  br label %165

165:                                              ; preds = %164, %107, %94
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %75

168:                                              ; preds = %75
  br label %169

169:                                              ; preds = %168, %38
  %170 = load i64, i64* %10, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %10, align 8
  br label %15

172:                                              ; preds = %54, %73, %15
  ret void
}

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_9__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @memset(%struct.rel_entry*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_ent_count(%struct.section*, i32*) #1

declare dso_local %struct.TYPE_10__* @gelf_getrel(%struct.TYPE_9__*, i32, %struct.TYPE_10__*) #1

declare dso_local i32* @gelf_getrela(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @get_symbol_name(%struct.elfdump*, i32, i32) #1

declare dso_local i32 @GELF_R_SYM(i32) #1

declare dso_local i32 @memcpy(%struct.rel_entry*, %struct.rel_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
