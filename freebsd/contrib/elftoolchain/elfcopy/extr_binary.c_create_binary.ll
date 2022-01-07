; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_binary.c_create_binary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_binary.c_create_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i32 }

@ELF_C_READ = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"elf_begin() failed: %s\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"lseek failed\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"gelf_getshdr failed: %s\00", align 1
@SHF_ALLOC = common dso_local global i32 0, align 4
@SHT_NOBITS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"elf_nextscn failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"elf_rawdata failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"write failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_binary(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ELF_C_READ, align 4
  %15 = call i32* @elf_begin(i32 %13, i32 %14, i32* null)
  store i32* %15, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  %19 = call i32 @elf_errmsg(i32 -1)
  %20 = call i32 @errx(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @SEEK_SET, align 4
  %25 = call i64 @lseek(i32 %22, i32 %23, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = call i32 @err(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %21
  store i32 -1, i32* %10, align 4
  store i32* null, i32** %6, align 8
  br label %31

31:                                               ; preds = %73, %59, %40, %30
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32* @elf_nextscn(i32* %32, i32* %33)
  store i32* %34, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %74

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = call i32* @gelf_getshdr(i32* %37, %struct.TYPE_5__* %9)
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = call i32 @elf_errmsg(i32 -1)
  %42 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = call i32 (...) @elf_errno()
  br label %31

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SHF_ALLOC, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SHT_NOBITS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %50, %44
  br label %31

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63, %60
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %10, align 4
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %68, %63
  br label %31

74:                                               ; preds = %31
  %75 = call i32 (...) @elf_errno()
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @elf_errmsg(i32 %79)
  %81 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %178

86:                                               ; preds = %82
  store i32* null, i32** %6, align 8
  br label %87

87:                                               ; preds = %169, %139, %128, %115, %96, %86
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = call i32* @elf_nextscn(i32* %88, i32* %89)
  store i32* %90, i32** %6, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %170

92:                                               ; preds = %87
  %93 = load i32*, i32** %6, align 8
  %94 = call i32* @gelf_getshdr(i32* %93, %struct.TYPE_5__* %9)
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = call i32 @elf_errmsg(i32 -1)
  %98 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = call i32 (...) @elf_errno()
  br label %87

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SHF_ALLOC, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SHT_NOBITS, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111, %106, %100
  br label %87

116:                                              ; preds = %111
  %117 = call i32 (...) @elf_errno()
  %118 = load i32*, i32** %6, align 8
  %119 = call %struct.TYPE_6__* @elf_rawdata(i32* %118, i32* null)
  store %struct.TYPE_6__* %119, %struct.TYPE_6__** %7, align 8
  %120 = icmp eq %struct.TYPE_6__* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = call i32 (...) @elf_errno()
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = call i32 @elf_errmsg(i32 -1)
  %127 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %125, %121
  br label %87

129:                                              ; preds = %116
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134, %129
  br label %87

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %8, align 4
  %144 = sub nsw i32 %142, %143
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @SEEK_SET, align 4
  %148 = call i64 @lseek(i32 %145, i32 %146, i32 %147)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %140
  %151 = load i32, i32* @EXIT_FAILURE, align 4
  %152 = call i32 @err(i32 %151, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %140
  %154 = load i32, i32* %4, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @write(i32 %154, i32* %157, i64 %160)
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %161, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %153
  %167 = load i32, i32* @EXIT_FAILURE, align 4
  %168 = call i32 @err(i32 %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %153
  br label %87

170:                                              ; preds = %87
  %171 = call i32 (...) @elf_errno()
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @elf_errmsg(i32 %175)
  %177 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %85, %174, %170
  ret void
}

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_6__* @elf_rawdata(i32*, i32*) #1

declare dso_local i64 @write(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
