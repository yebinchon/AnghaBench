; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_bfd_elf_set_group_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_bfd_elf_set_group_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i64, i8*, i32, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i8* }

@SEC_GROUP = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SEC_LINK_ONCE = common dso_local global i32 0, align 4
@GRP_COMDAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfd_elf_set_group_contents(i32* %0, %struct.TYPE_17__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %7, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SEC_GROUP, align 4
  %21 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = load i32, i32* @SEC_GROUP, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %3
  br label %167

31:                                               ; preds = %26
  store i64 0, i64* %8, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = call %struct.TYPE_13__* @elf_group_id(%struct.TYPE_17__* %32)
  %34 = icmp ne %struct.TYPE_13__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = call %struct.TYPE_13__* @elf_group_id(%struct.TYPE_17__* %36)
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %35, %31
  %42 = load i64, i64* %8, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = call %struct.TYPE_18__** @elf_section_syms(i32* %45)
  %47 = icmp ne %struct.TYPE_18__** %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32*, i32** %4, align 8
  %50 = call %struct.TYPE_18__** @elf_section_syms(i32* %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %50, i64 %53
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %8, align 8
  br label %63

59:                                               ; preds = %44
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %8, align 8
  br label %63

63:                                               ; preds = %59, %48
  br label %64

64:                                               ; preds = %63, %41
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = call %struct.TYPE_19__* @elf_section_data(%struct.TYPE_17__* %66)
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  store i64 %65, i64* %69, align 8
  %70 = load i64, i64* @TRUE, align 8
  store i64 %70, i64* %12, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %99

75:                                               ; preds = %64
  %76 = load i64, i64* @FALSE, align 8
  store i64 %76, i64* %12, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @bfd_alloc(i32* %77, i32 %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = call %struct.TYPE_19__* @elf_section_data(%struct.TYPE_17__* %87)
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  store i8* %86, i8** %90, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %75
  %96 = load i64, i64* @TRUE, align 8
  %97 = load i64*, i64** %7, align 8
  store i64 %96, i64* %97, align 8
  br label %167

98:                                               ; preds = %75
  br label %99

99:                                               ; preds = %98, %64
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %102, i64 %106
  store i8* %107, i8** %11, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %109 = call %struct.TYPE_17__* @elf_next_in_group(%struct.TYPE_17__* %108)
  store %struct.TYPE_17__* %109, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %109, %struct.TYPE_17__** %10, align 8
  br label %110

110:                                              ; preds = %142, %99
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %112 = icmp ne %struct.TYPE_17__* %111, null
  br i1 %112, label %113, label %143

113:                                              ; preds = %110
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 -4
  store i8* %115, i8** %11, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %116, %struct.TYPE_17__** %13, align 8
  %117 = load i64, i64* %12, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %113
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 5
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  store %struct.TYPE_17__* %122, %struct.TYPE_17__** %13, align 8
  br label %123

123:                                              ; preds = %119, %113
  store i32 0, i32* %14, align 4
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %125 = icmp ne %struct.TYPE_17__* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %128 = call %struct.TYPE_19__* @elf_section_data(%struct.TYPE_17__* %127)
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %126, %123
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* %14, align 4
  %134 = load i8*, i8** %11, align 8
  %135 = call i32 @H_PUT_32(i32* %132, i32 %133, i8* %134)
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %137 = call %struct.TYPE_17__* @elf_next_in_group(%struct.TYPE_17__* %136)
  store %struct.TYPE_17__* %137, %struct.TYPE_17__** %9, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %140 = icmp eq %struct.TYPE_17__* %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  br label %143

142:                                              ; preds = %131
  br label %110

143:                                              ; preds = %141, %110
  %144 = load i8*, i8** %11, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 -4
  store i8* %145, i8** %11, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 3
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %145, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = call i32 (...) @abort() #3
  unreachable

152:                                              ; preds = %143
  %153 = load i32*, i32** %4, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @SEC_LINK_ONCE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load i32, i32* @GRP_COMDAT, align 4
  br label %163

162:                                              ; preds = %152
  br label %163

163:                                              ; preds = %162, %160
  %164 = phi i32 [ %161, %160 ], [ 0, %162 ]
  %165 = load i8*, i8** %11, align 8
  %166 = call i32 @H_PUT_32(i32* %153, i32 %164, i8* %165)
  br label %167

167:                                              ; preds = %163, %95, %30
  ret void
}

declare dso_local %struct.TYPE_13__* @elf_group_id(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__** @elf_section_syms(i32*) #1

declare dso_local %struct.TYPE_19__* @elf_section_data(%struct.TYPE_17__*) #1

declare dso_local i8* @bfd_alloc(i32*, i32) #1

declare dso_local %struct.TYPE_17__* @elf_next_in_group(%struct.TYPE_17__*) #1

declare dso_local i32 @H_PUT_32(i32*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
